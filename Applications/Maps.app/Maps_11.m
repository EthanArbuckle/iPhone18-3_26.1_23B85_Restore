void *sub_100190844()
{
  swift_getObjectType();
  v25 = &_swiftEmptySetSingleton;
  v23 = v0;
  v24 = _swiftEmptyArrayStorage;
  v1 = sub_1001904C4();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v22 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          break;
        }

        goto LABEL_12;
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(v2 + 32 + 8 * v4);

      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        break;
      }

LABEL_12:
      v7 = v25;
      v8 = OBJC_IVAR____TtC4Maps16VisitHistoryItem_place;
      v9 = [*(*(v5 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56) _muid];
      if (*(v7 + 2))
      {
        v10 = v9;
        v11 = static Hasher._hash(seed:_:)();
        v12 = -1 << v7[32];
        v13 = v11 & ~v12;
        if ((*&v7[((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v13))
        {
          v14 = ~v12;
          while (*(*(v7 + 6) + 8 * v13) != v10)
          {
            v13 = (v13 + 1) & v14;
            if (((*&v7[((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v13) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          goto LABEL_5;
        }
      }

LABEL_17:
      v15 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:*(*(v5 + v8) + 56) isPlaceHolderPlace:0];
      if (v15)
      {
        v16 = v15;
        v17 = [objc_allocWithZone(SearchResult) initWithMapItem:v15];
        if (!v17)
        {

          goto LABEL_5;
        }

        v18 = v17;
        sub_100307530(&v23, [*(*(v5 + v8) + 56) _muid]);
        v19 = v18;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v22 = v24;
        if (v4 == i)
        {
LABEL_22:

          v20 = v22;
          goto LABEL_27;
        }
      }

      else
      {
LABEL_5:

        if (v4 == i)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_27:

  return v20;
}

uint64_t sub_100190B28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100190BD8()
{
  swift_getKeyPath();
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100190CA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 121);
  return result;
}

uint64_t sub_100190D78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000F1DB8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_100190E64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000F1DB0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100190FC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 160);
  v5 = *(v3 + 168);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1001910AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_100191208@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 176);
  v5 = *(v3 + 184);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100060ED0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1001912F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1001552C0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1001914D4(&qword_10190E1B0, type metadata accessor for VisitHistoryFilterViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1001914D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10019152C()
{
  result = qword_10190E160;
  if (!qword_10190E160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190E160);
  }

  return result;
}

uint64_t sub_100191590()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LibraryTipkitCellModel(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LibraryTipkitCellModel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_10019162C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_10019176C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_100191974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v10 = *(v5 + 16);
  v10(&v15 - v11, v9);
  if (!swift_dynamicCast())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v13 = &v18;
LABEL_6:
    sub_10010EA94(v13);
    v12 = 0;
    return v12 & 1;
  }

  v21[0] = v18;
  v21[1] = v19;
  v22 = v20;
  (v10)(v7, a2, a3);
  if (!swift_dynamicCast())
  {
    sub_10005BF8C(v21);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    v13 = &v15;
    goto LABEL_6;
  }

  v18 = v15;
  v19 = v16;
  v20 = v17;
  v12 = static AnyHashable.== infix(_:_:)();
  sub_10005BF8C(&v18);
  sub_10005BF8C(v21);
  return v12 & 1;
}

uint64_t sub_100191B28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = __chkstk_darwin(a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v3, v4);
  if (swift_dynamicCast())
  {
    v11[0] = v8;
    v11[1] = v9;
    v12 = v10;
    AnyHashable.hash(into:)();
    return sub_10005BF8C(v11);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    return sub_10010EA94(&v8);
  }
}

Swift::Int sub_100191C40(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100191B28(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_100191C90(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_100191B28(v4, a2);
  return Hasher._finalize()();
}

Swift::UInt sub_100191CDC()
{
  if (swift_unknownObjectWeakLoadStrong() && (swift_dynamicCast() & 1) != 0)
  {
    if (*(&v2 + 1))
    {
      v4[0] = v1;
      v4[1] = v2;
      v5 = v3;
      AnyHashable.hash(into:)();
      return sub_10005BF8C(v4);
    }
  }

  else
  {
    v3 = 0;
    v1 = 0u;
    v2 = 0u;
  }

  sub_10010EA94(&v1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Hasher._combine(_:)(result);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int sub_100191DA8()
{
  Hasher.init(_seed:)();
  sub_100191CDC();
  return Hasher._finalize()();
}

Swift::Int sub_100191DF0()
{
  Hasher.init(_seed:)();
  sub_100191CDC();
  return Hasher._finalize()();
}

uint64_t sub_100191E48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100191E90(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100191EFC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RefinementsBarButtonViewModel(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FilterBarOption();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v21;
  v10 = v21[2];
  if (v10)
  {
    v17[1] = a1;
    v21 = _swiftEmptyArrayStorage;
    v19 = v10;
    sub_100511578(0, v10, 0);
    v11 = 0;
    v12 = v21;
    v18 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v17[2] = v6 + 32;
    while (v11 < v9[2])
    {
      v13 = v3;
      sub_100192B7C(&v18[*(v3 + 72) * v11], v5, type metadata accessor for RefinementsBarButtonViewModel);
      sub_100192210(v5, v8);
      sub_100192C04(v5, type metadata accessor for RefinementsBarButtonViewModel);
      v21 = v12;
      v15 = v12[2];
      v14 = v12[3];
      if (v15 >= v14 >> 1)
      {
        sub_100511578(v14 > 1, v15 + 1, 1);
        v12 = v21;
      }

      ++v11;
      v12[2] = v15 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v8, v20);
      v3 = v13;
      if (v19 == v11)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    sub_100192C04(v5, type metadata accessor for RefinementsBarButtonViewModel);

    __break(1u);
  }

  else
  {
LABEL_7:

    return FilterBarViewModel.init(options:accessibilityIdentifier:)();
  }

  return result;
}

uint64_t sub_100192210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v59 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for RefinementsBarButtonViewModel.Submenu.Element(0);
  v8 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for FilterBarOption.SubOption();
  v60 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RefinementsBarButtonViewModel(0);
  v13 = v12;
  v14 = *(v12 + 32);
  v49 = a1;
  v15 = a1 + v14;
  v16 = *v15;
  v64 = v2;
  if (v16)
  {
    v17 = *(v16 + 16);
    v18 = _swiftEmptyArrayStorage;
    if (v17)
    {
      v48 = v12;
      v19 = *(v15 + 8);
      v20 = *(v15 + 24);
      v21 = *(v15 + 16);
      v65 = _swiftEmptyArrayStorage;
      sub_100511228(0, v17, 0);
      v18 = v65;
      v22 = v8;
      v23 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v53 = *(v22 + 72);
      v54 = v16;
      if (v21)
      {
        v24 = v20;
      }

      else
      {
        v24 = v19;
      }

      v51 = v60 + 32;
      v52 = v24;
      do
      {
        v63 = v17;
        v25 = v56;
        sub_100192B7C(v23, v56, type metadata accessor for RefinementsBarButtonViewModel.Submenu.Element);
        v26 = UUID.uuidString.getter();
        v61 = v27;
        v62 = v26;

        AttributeContainer.init()();
        v28 = AttributedString.init(_:attributes:)();
        __chkstk_darwin(v28);
        v66._object = v25;
        v29 = v64;
        sub_10052525C(sub_100192BE4, v45, v54);
        v64 = v29;
        FilterBarOption.SubOption.init(id:displayImage:displayName:isSelected:)();
        sub_100192C04(v25, type metadata accessor for RefinementsBarButtonViewModel.Submenu.Element);
        v65 = v18;
        v31 = v18[2];
        v30 = v18[3];
        if (v31 >= v30 >> 1)
        {
          sub_100511228(v30 > 1, v31 + 1, 1);
          v18 = v65;
        }

        v18[2] = v31 + 1;
        (*(v60 + 32))(v18 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v31, v11, v55);
        v23 += v53;
        v17 = v63 - 1;
      }

      while (v63 != 1);
      v13 = v48;
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v32 = v49;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v66._object = 0x8000000101220C80;
  v33._countAndFlagsBits = 0x7265746C6946;
  v33._object = 0xE600000000000000;
  v34._countAndFlagsBits = 0x7265746C6946;
  v34._object = 0xE600000000000000;
  v66._countAndFlagsBits = 0xD000000000000041;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, qword_1019600D8, v34, v66);
  countAndFlagsBits = v35._countAndFlagsBits;
  object = v35._object;
  UUID.uuidString.getter();
  v38 = v13;
  v39 = v32 + *(v13 + 20);
  v41 = *v39;
  v40 = *(v39 + 8);
  if (*(v39 + 16) == 1)
  {
  }

  else
  {
    sub_100192B74();

    countAndFlagsBits = v41;
    object = v40;
  }

  v42 = *(v32 + *(v38 + 28));
  v43 = *(v32 + *(v38 + 24));
  v46 = v18;
  BYTE1(v66._object) = v43;
  LOBYTE(v66._object) = v42;
  v45[0] = countAndFlagsBits;
  v45[1] = object;
  return FilterBarOption.init(id:systemImageName:displayName:accessibilityIdentifier:accessibilityLabel:showDropdown:isSelected:subOptions:)();
}

void sub_100192754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, char *))
{
  v10 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  if (*(a6 + OBJC_IVAR____TtC4Maps23RefinementsBarViewModel_tapInteractionEnabled) == 1)
  {
    UUID.init(uuidString:)();
    v16 = type metadata accessor for UUID();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      __break(1u);
    }

    else
    {
      if (a4)
      {
        UUID.init(uuidString:)();
      }

      else
      {
        (*(v17 + 56))(v12, 1, 1, v16);
      }

      a7(v15, v12);
      sub_100192A14(v12);
      (*(v17 + 8))(v15, v16);
    }
  }
}

uint64_t sub_100192914()
{
  v1 = type metadata accessor for FilterBarViewModel();
  __chkstk_darwin(v1 - 8);
  v3 = *v0;
  v4 = v0[3];
  v9 = *(v0 + 1);
  v5 = v9;
  sub_100191EFC(&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v9;
  *(v6 + 40) = v4;
  v7 = v5;

  return FilterBar.init(model:allowGlass:tapHandler:)();
}

uint64_t sub_100192A14(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_101918E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100192A7C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100192AFC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100192B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100192C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100192C64()
{
  result = qword_10191DB00;
  if (!qword_10191DB00)
  {
    type metadata accessor for FilterBar();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191DB00);
  }

  return result;
}

char *sub_100192CBC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_100511184(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100511184((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_1000D2BE0(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_100511184((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_1000D2BE0(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_100192EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100511454(0, v1, 0);
    v3 = a1 + 48;
    do
    {

      sub_1000CE6B8(&qword_10190EC60);
      sub_1000CE6B8(&qword_10190EC68);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_100511454((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[7 * v5];
      v6[10] = v11;
      *(v6 + 3) = v9;
      *(v6 + 4) = v10;
      *(v6 + 2) = v8;
      v3 += 24;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100193008(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100511414(0, v1, 0);
    v3 = a1 + 56;
    do
    {

      sub_1000CE6B8(&qword_10190EC70);
      sub_1000CE6B8(&unk_10190EC78);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_100511414((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[4 * v5];
      v6[4] = v8;
      v6[5] = v9;
      v6[6] = v10;
      v6[7] = v11;
      v3 += 32;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100193158(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = _swiftEmptyArrayStorage;
  result = sub_100511184(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100014C84(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          sub_100511184((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        v5[2] = v9 + 1;
        sub_1000D2BE0(v14, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_100014C84(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          sub_100511184((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        v5[2] = v13 + 1;
        sub_1000D2BE0(v14, &v5[4 * v13 + 4]);
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_100193344(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_1005115BC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = sub_10019CE98();
    v5 = (a1 + 72);
    v29 = v4;
    do
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v11 = *(v5 - 1);
      v10 = *v5;
      v37 = &type metadata for CapsuleOptionSelectableItem;
      v38 = v4;
      v12 = swift_allocObject();
      v36[0] = v12;
      v12[2] = v6;
      v12[3] = v7;
      v12[4] = v8;
      v12[5] = v9;
      v12[6] = v11;
      v12[7] = v10;
      v39 = v2;
      v13 = v2[2];
      v14 = v2[3];

      v15 = &type metadata for CapsuleOptionSelectableItem;
      if (v13 >= v14 >> 1)
      {
        sub_1005115BC((v14 > 1), v13 + 1, 1);
        v15 = v37;
        v2 = v39;
      }

      v5 += 6;
      v16 = sub_1000FA458(v36, v15);
      v32 = &v28;
      v17 = __chkstk_darwin(v16);
      v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19, v17);
      v21 = *v19;
      v30 = *(v19 + 1);
      v31 = v21;
      v22 = *(v19 + 4);
      v23 = *(v19 + 5);
      v24 = v29;
      v34 = &type metadata for CapsuleOptionSelectableItem;
      v35 = v29;
      v25 = swift_allocObject();
      *&v33 = v25;
      v26 = v30;
      *(v25 + 16) = v31;
      *(v25 + 32) = v26;
      *(v25 + 48) = v22;
      *(v25 + 56) = v23;
      v2[2] = v13 + 1;
      sub_10005E7BC(&v33, &v2[5 * v13 + 4]);
      sub_10004E3D0(v36);
      --v1;
      v4 = v24;
    }

    while (v1);
  }

  return v2;
}

void *sub_10019358C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    sub_10051180C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100098118(v4, v11);
      v12 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10051180C((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for HomeListCellSnapshot;
      v10 = sub_10019CFF0();
      *&v8 = swift_allocObject();
      sub_100098118(v11, v8 + 16);
      v2[2] = v6 + 1;
      sub_10005E7BC(&v8, &v2[5 * v6 + 4]);
      sub_10019D044(v11);
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1001936B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v12 = _swiftEmptyArrayStorage;
    sub_10051180C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10019CEEC(v4, v11);
      v12 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10051180C((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for HomeListSupplementaryViewSnapshot;
      v10 = sub_10019CF48();
      *&v8 = swift_allocObject();
      sub_10019CEEC(v11, v8 + 16);
      v2[2] = v6 + 1;
      sub_10005E7BC(&v8, &v2[5 * v6 + 4]);
      sub_10019CF9C(v11);
      v4 += 64;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1001937D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = &_swiftEmptyArrayStorage;
    sub_10051180C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v10 = *v4;
      v11 = v4[1];
      v15 = v2;
      v5 = v2[2];
      v6 = v2[3];
      v7 = v10;

      if (v5 >= v6 >> 1)
      {
        sub_10051180C((v6 > 1), v5 + 1, 1);
        v2 = v15;
      }

      v13 = &type metadata for HomeListSectionSnapshot;
      v14 = sub_10019D098();
      v8 = swift_allocObject();
      *&v12 = v8;
      *(v8 + 16) = v10;
      *(v8 + 32) = v11;
      v2[2] = v5 + 1;
      sub_10005E7BC(&v12, &v2[5 * v5 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_100193954(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v14 = _swiftEmptyArrayStorage;
  result = sub_100511184(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v14;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000CE6B8(a2);
        swift_dynamicCast();
        v14 = v5;
        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          sub_100511184((v8 > 1), v9 + 1, 1);
          v5 = v14;
        }

        v5[2] = v9 + 1;
        sub_1000D2BE0(v13, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_1000CE6B8(a2);
        swift_dynamicCast();
        v14 = v5;
        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          sub_100511184((v11 > 1), v12 + 1, 1);
          v5 = v14;
        }

        v5[2] = v12 + 1;
        sub_1000D2BE0(v13, &v5[4 * v12 + 4]);
        v10 += 8;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_100193B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_100511184(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100511184((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1000D2BE0(&v8, &v2[4 * v6 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_100193C40()
{
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_100193CF0()
{
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100193D94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
}

uint64_t sub_100193E40()
{
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100193EE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
}

uint64_t sub_100193F90()
{
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10019404C()
{
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001940F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 80) = a2;
}

uint64_t sub_10019412C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  *a2 = *(v3 + 88);
  a2[1] = v4;
}

uint64_t sub_1001941D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100194218(v1, v2);
}

uint64_t sub_100194218(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 88) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t sub_100194388()
{
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 104);
}

uint64_t sub_100194428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_1001944D0(uint64_t result)
{
  if (*(v1 + 104) == (result & 1))
  {
    *(v1 + 104) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1001945E0()
{
  v1 = v0;
  swift_getKeyPath();
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 72);
  if (v2)
  {
    v3 = sub_10019C84C(&qword_10190EB78, type metadata accessor for VisitHistoryFilterCitiesState);
  }

  else
  {
    v3 = 0;
  }

  v20[0] = v2;
  v20[1] = v3;
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 64);
  if (v4)
  {
    v5 = sub_10019C84C(&qword_10190EB68, type metadata accessor for VisitHistoryFilterCategoriesState);
  }

  else
  {
    v5 = 0;
  }

  v20[2] = v4;
  v20[3] = v5;
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v1 + 80);
  if (v6)
  {
    v7 = sub_10019C84C(&qword_10190EBE8, type metadata accessor for VisitHistoryFilterDateRangeState);
  }

  else
  {
    v7 = 0;
  }

  v20[4] = v6;
  v20[5] = v7;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_11:
  if (v9 <= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 + 1;
  v13 = &v20[2 * v9];
  while (1)
  {
    if (v9 == 3)
    {
      sub_1000CE6B8(&qword_10190EBE0);
      swift_arrayDestroy();
      return v10;
    }

    if (v12 == ++v9)
    {
      break;
    }

    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100356B0C(0, v10[2] + 1, 1, v10);
        v10 = result;
      }

      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_100356B0C((v17 > 1), v18 + 1, 1, v10);
        v10 = result;
      }

      v10[2] = v18 + 1;
      v19 = &v10[2 * v18];
      v19[4] = v15;
      v19[5] = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001948DC()
{
  result = sub_1001945E0();
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = 16 * v2 + 32;
  while (1)
  {
    if (v3 == v2)
    {

      return v4;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    ++v2;
    v6 = v5 + 16;
    v7 = *(v1 + v5);
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    v5 = v6;
    if (!v8)
    {
      v9 = result;
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100356B30(0, v4[2] + 1, 1, v4);
        v4 = result;
      }

      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_100356B30((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      v4[2] = v11 + 1;
      v12 = &v4[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100194A08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for VisitHistoryFilterCategoriesState(0);
    swift_allocObject();

    sub_100198AE0(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[0] = v2;
    sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    type metadata accessor for VisitHistoryFilterCitiesState(0);
    swift_allocObject();

    sub_100198278(v6);
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    v11[0] = v2;
    sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_100191458(v2 + 16, v11);
  if (v12 > 1u)
  {
    if (v12 == 2)
    {
      v8 = swift_getKeyPath();
      __chkstk_darwin(v8);
      sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return sub_1000F1E68(v11);
    }
  }

  else if (!v12)
  {
    sub_1000F1E68(v11);
  }

  type metadata accessor for VisitHistoryFilterDateRangeState(0);
  swift_allocObject();
  sub_10019C650();
  v10 = swift_getKeyPath();
  __chkstk_darwin(v10);
  v11[0] = v2;
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100194DF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    a1 = String._mapsui_nilIfEmpty.getter();
    v4 = v3;
    v6 = (v2 + 96);
    v5 = *(v2 + 96);
    v7 = (v2 + 88);
    if (v5)
    {
      if (v3)
      {
        if (*(v2 + 88) == a1 && v5 == v3)
        {
          goto LABEL_15;
        }

        v9 = a1;
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
        a1 = v9;
        if (v10)
        {
          goto LABEL_15;
        }
      }

LABEL_13:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = (v2 + 96);
    if (*(v2 + 96))
    {
      goto LABEL_13;
    }

    v7 = (v2 + 88);
    v4 = 0;
  }

LABEL_15:
  *v7 = a1;
  *v6 = v4;
}

void *sub_100194FC0()
{
  v23 = type metadata accessor for FilterBarOption();
  v1 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  swift_getKeyPath();
  v24 = v0;
  sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1001952CC(*(v0 + 104), v6);
  v7 = sub_1001945E0();
  v8 = *(v7 + 16);
  if (v8)
  {
    v21 = v6;
    v24 = _swiftEmptyArrayStorage;
    sub_100511578(0, v8, 0);
    v9 = v24;
    v22 = v1 + 32;
    v20[1] = v7;
    v10 = (v7 + 40);
    do
    {
      v11 = *v10;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 16);
      swift_unknownObjectRetain();
      v13(ObjectType, v11);
      swift_unknownObjectRelease();
      v24 = v9;
      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        sub_100511578(v14 > 1, v15 + 1, 1);
        v9 = v24;
      }

      v9[2] = v15 + 1;
      v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      (*(v1 + 32))(v9 + v16 + *(v1 + 72) * v15, v3, v23);
      v10 += 2;
      --v8;
    }

    while (v8);

    v6 = v21;
  }

  else
  {

    v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v9 = _swiftEmptyArrayStorage;
  }

  sub_1000CE6B8(&qword_10190EC90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1011E1D30;
  v18 = v23;
  (*(v1 + 16))(v17 + v16, v6, v23);
  v24 = v17;
  sub_1002473E0(v9);
  (*(v1 + 8))(v6, v18);
  return v24;
}

uint64_t sub_1001952CC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v25[1] = a2;
  v2 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v2 - 8);
  v34 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v33 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FilterBarOption.SubOption();
  v6 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = _swiftEmptyArrayStorage;
  sub_100511228(0, 2, 0);
  v9 = 0;
  v10 = 0;
  v11 = v38;
  v29 = "arrow.up.arrow.down";
  v27 = "g visited places";
  v28 = 0x8000000101221360;
  v26 = 0x8000000101221240;
  v31 = v6 + 32;
  do
  {
    v36 = v9;
    v37 = *(&off_101600390 + v10 + 32);
    v12 = v37;
    String.init<A>(describing:)();
    if (v12)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v13.super.isa = qword_1019600D8;
      v24 = v26;
      v14 = 0xD00000000000002BLL;
      v15 = v27 | 0x8000000000000000;
      v16 = 0xD000000000000040;
      v30.super.isa = qword_1019600D8;
      v17 = 0x7465626168706C41;
      v18 = 0xEC0000006C616369;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v13.super.isa = qword_1019600D8;
      v24 = v28;
      v14 = 0xD000000000000028;
      v15 = v29 | 0x8000000000000000;
      v16 = 0xD00000000000003BLL;
      v30.super.isa = qword_1019600D8;
      v17 = 0x6365522074736F4DLL;
      v18 = 0xEB00000000746E65;
    }

    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, 0, v13, *&v17, *&v16);
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    FilterBarOption.SubOption.init(id:displayImage:displayName:isSelected:)();
    v38 = v11;
    v20 = v11[2];
    v19 = v11[3];
    if (v20 >= v19 >> 1)
    {
      sub_100511228(v19 > 1, v20 + 1, 1);
      v11 = v38;
    }

    v11[2] = v20 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v8, v32);
    v9 = 1;
    v10 = &_mh_execute_header.magic + 1;
  }

  while ((v36 & 1) == 0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v39._object = 0x80000001012212C0;
  v21._countAndFlagsBits = 0xD000000000000027;
  v21._object = 0x8000000101221290;
  v39._countAndFlagsBits = 0xD000000000000046;
  v22._countAndFlagsBits = 1953656659;
  v22._object = 0xE400000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v30, v22, v39);
  swift_bridgeObjectRetain_n();
  return FilterBarOption.init(id:systemImageName:displayName:accessibilityIdentifier:accessibilityLabel:showDropdown:isSelected:subOptions:)();
}

uint64_t sub_100195790@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v11 = sub_1000CE6B8(&qword_10190EC88);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_10190E710 == a1 && off_10190E718 == a2;
  if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (a4)
    {
      v19 = sub_10019D590(a3, a4);
      if (v19 != 2)
      {
        v20 = v19 & 1;
        if (*(v5 + 104) == (v19 & 1))
        {
          *(v5 + 104) = v20;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          *(&v36 - 2) = v5;
          *(&v36 - 8) = v20;
          *&v38[0] = v5;
          sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }
      }

      goto LABEL_21;
    }

    type metadata accessor for VisitHistoryFilterState.DropdownFilterSelectionResult(0);
LABEL_11:

    return swift_storeEnumTagMultiPayload();
  }

  v37 = a5;
  if (a1 == 0xD00000000000001CLL && 0x8000000101220EB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_getKeyPath();
    *&v38[0] = v5;
    sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v5 + 80))
    {

      sub_100195CE0(a3, a4, v13);

      v23 = (*(v15 + 48))(v13, 1, v14);
      v24 = v37;
      if (v23 != 1)
      {
        sub_10019CDCC(v13, v17);
        sub_10019CDCC(v17, v24);
        type metadata accessor for VisitHistoryFilterState.DropdownFilterSelectionResult(0);
        return swift_storeEnumTagMultiPayload();
      }

      sub_100024F64(v13, &qword_10190EC88);
    }

LABEL_21:
    type metadata accessor for VisitHistoryFilterState.DropdownFilterSelectionResult(0);
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_1001948DC();
  v25 = result;
  v36 = *(result + 16);
  if (!v36)
  {
LABEL_32:

    type metadata accessor for VisitHistoryFilterState.DropdownFilterSelectionResult(0);
    goto LABEL_11;
  }

  v26 = 0;
  v27 = (result + 40);
  while (v26 < *(v25 + 16))
  {
    v28 = *v27;
    ObjectType = swift_getObjectType();
    v30 = *(v28 + 16);
    swift_unknownObjectRetain();
    if (v30(ObjectType, v28) == a1 && v31 == a2)
    {

LABEL_35:

      (*(v28 + 64))(v38, ObjectType, v28);
      swift_unknownObjectRelease();
      v34 = v38[1];
      v35 = v37;
      *v37 = v38[0];
      v35[1] = v34;
      v35[2] = v38[2];
      *(v35 + 48) = v39;
      type metadata accessor for VisitHistoryFilterState.DropdownFilterSelectionResult(0);
      goto LABEL_11;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_35;
    }

    ++v26;
    result = swift_unknownObjectRelease();
    v27 += 2;
    if (v36 == v26)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100195CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1000CE6B8(&qword_10190EC88);
  __chkstk_darwin(v7 - 8);
  v9 = v24 - v8;
  v10 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&qword_10190EB80);
  __chkstk_darwin(v14 - 8);
  v16 = v24 - v15;
  if (!a2)
  {
    swift_getKeyPath();
    v24[1] = v3;
    sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
    v19 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState__currentSelection;
    swift_beginAccess();
    sub_1000D2DFC(v19 + v20, v16, &qword_10190EB80);
    v21 = sub_1000CE6B8(&unk_10190EA08);
    if ((*(*(v21 - 8) + 48))(v16, 1, v21))
    {
      v17 = &qword_10190EB80;
      v18 = v16;
      goto LABEL_6;
    }

    sub_10019CE30(v16, a3, type metadata accessor for VisitHistoryFilterDatePickerMode);
    sub_100024F64(v16, &qword_10190EB80);
LABEL_9:
    v22 = 0;
    return (*(v11 + 56))(a3, v22, 1, v10);
  }

  sub_10019B348(a1, a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_10019CDCC(v9, v13);
    sub_10019CDCC(v13, a3);
    goto LABEL_9;
  }

  v17 = &qword_10190EC88;
  v18 = v9;
LABEL_6:
  sub_100024F64(v18, v17);
  v22 = 1;
  return (*(v11 + 56))(a3, v22, 1, v10);
}

uint64_t sub_100196024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  result = sub_1001948DC();
  v6 = result;
  v16 = *(result + 16);
  if (!v16)
  {
LABEL_11:

    return 0;
  }

  v7 = 0;
  v8 = (result + 40);
  while (v7 < *(v6 + 16))
  {
    v9 = *v8;
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 16);
    swift_unknownObjectRetain();
    if (v11(ObjectType, v9) == a1 && v12 == a2)
    {

LABEL_14:

      (*(v9 + 72))(a3, ObjectType, v9);
      swift_unknownObjectRelease();
      return 1;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_14;
    }

    ++v7;
    result = swift_unknownObjectRelease();
    v8 += 2;
    if (v16 == v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10019617C(uint64_t a1)
{
  v3 = sub_1000CE6B8(&qword_10190EB88);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_1000CE6B8(&unk_10190EB90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&qword_10190EB80);
  __chkstk_darwin(v14 - 8);
  v32 = &v31 - v15;
  v16 = type metadata accessor for VisitHistoryDateFilterPickerSelectionResult(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10019CE30(a1, v18, type metadata accessor for VisitHistoryDateFilterPickerSelectionResult);
  result = (*(v11 + 48))(v18, 2, v10);
  if (result)
  {
    if (result == 1)
    {
      return result;
    }

    v20 = sub_1000CE6B8(&unk_10190EA08);
    v21 = v32;
    (*(*(v20 - 8) + 56))(v32, 1, 1, v20);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v31 - 2) = v1;
    *(&v31 - 1) = v21;
    v33 = v1;
    sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v23 = v1;
    v24 = v13;
    sub_10019CDCC(v18, v13);
    sub_10019B5E0(v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100024F64(v5, &qword_10190EB88);
      v25 = sub_1000CE6B8(&unk_10190EA08);
      v21 = v32;
      (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
      v26 = swift_getKeyPath();
      __chkstk_darwin(v26);
      *(&v31 - 2) = v1;
      *(&v31 - 1) = v21;
      v33 = v1;
      sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      v27 = v9;
      sub_1000F11C4(v5, v9, &unk_10190EB90);
      v28 = sub_1000CE6B8(&unk_10190EA08);
      v29 = *(v28 + 48);
      v21 = v32;
      sub_10019CE30(v24, v32, type metadata accessor for VisitHistoryFilterDatePickerMode);
      sub_1000D2DFC(v27, v21 + v29, &unk_10190EB90);
      (*(*(v28 - 8) + 56))(v21, 0, 1, v28);
      v30 = swift_getKeyPath();
      __chkstk_darwin(v30);
      *(&v31 - 2) = v23;
      *(&v31 - 1) = v21;
      v33 = v23;
      sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_100024F64(v27, &unk_10190EB90);
    }

    sub_10019CA4C(v24);
  }

  return sub_100024F64(v21, &qword_10190EB80);
}

id sub_100196808@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v2 = sub_1000CE6B8(&qword_10190EB80);
  __chkstk_darwin(v2 - 8);
  v112 = &v109 - v3;
  v4 = sub_1000CE6B8(&qword_10190EB88);
  __chkstk_darwin(v4 - 8);
  v114 = &v109 - v5;
  v111 = sub_1000CE6B8(&unk_10190EB90);
  v113 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v109 - v6;
  *&v144 = _swiftEmptyArrayStorage;
  *(&v144 + 1) = _swiftEmptyArrayStorage;
  *(&v145 + 1) = 0;
  memset(v146, 0, 24);
  *&v145 = _swiftEmptyArrayStorage;
  BYTE8(v146[1]) = 2;
  v147 = 0;
  sub_100251774(_swiftEmptyArrayStorage);
  v150 = v146[0];
  v151 = v146[1];
  v152 = v147;
  v148 = v144;
  v149 = v145;
  v153[2] = v146[0];
  v153[3] = v146[1];
  v154 = v147;
  v153[0] = v144;
  v153[1] = v145;
  sub_10019C99C(&v148, &v139);
  sub_10019C9F8(v153);
  v7 = v148;
  v146[0] = v150;
  v146[1] = v151;
  v147 = v152;
  v144 = v148;
  v145 = v149;
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC4Maps23VisitHistoryFilterState___observationRegistrar;
  *&v139 = v1;
  v9 = sub_10019C84C(&qword_10190E1C8, type metadata accessor for VisitHistoryFilterState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v1 + 96);
  *(&v145 + 1) = *(v1 + 88);
  *&v146[0] = v10;

  swift_getKeyPath();
  *&v139 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  BYTE8(v146[1]) = *(v1 + 104);
  swift_getKeyPath();
  *&v139 = v1;
  v118 = v9;
  v119 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v120 = v1;
  if (*(v1 + 64))
  {

    sub_1001979A4();
    v12 = v11;

    *&v144 = v12;
    v7 = v12;
  }

  v117 = *(&v148 + 1);
  swift_getKeyPath();
  v13 = v120;
  *&v139 = v120;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + 72);
  v124 = v7;
  if (!v14)
  {
    goto LABEL_91;
  }

  v15 = v14[4];
  v16 = *(v15 + 16);
  v128 = OBJC_IVAR____TtC4Maps29VisitHistoryFilterCitiesState___observationRegistrar;
  *&v129 = v15 + 32;
  swift_retain_n();
  v116 = v15;

  if (!v16)
  {
LABEL_19:
    v18 = v16;
    goto LABEL_20;
  }

  v18 = 0;
  v126 = v16;
  while (1)
  {
    v19 = (v129 + 40 * v18);
    v21 = v19[1];
    v20 = v19[2];
    v23 = v19[3];
    v22 = v19[4];
    swift_getKeyPath();
    *&v139 = v14;
    sub_10019C84C(&qword_10190EB70, type metadata accessor for VisitHistoryFilterCitiesState);

    v16 = v20;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = v14[5];
    if (*(v24 + 16))
    {
      break;
    }

LABEL_7:

    v16 = v126;
    if (++v18 == v126)
    {
      goto LABEL_19;
    }
  }

  v127 = v21;
  Hasher.init(_seed:)();

  String.hash(into:)();
  v25 = Hasher._finalize()();
  v26 = -1 << *(v24 + 32);
  v27 = v25 & ~v26;
  if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_17:

    goto LABEL_7;
  }

  v28 = ~v26;
  while (1)
  {
    v29 = (*(v24 + 48) + 16 * v27);
    v30 = *v29 == v23 && v29[1] == v22;
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v27 = (v27 + 1) & v28;
    if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_20:
  v31 = *(v116 + 16);
  if (v31 < v18)
  {
    v122 = v18;
    v123 = -1;
    v18 = v31;
    goto LABEL_24;
  }

  if (v18 == v31)
  {
    goto LABEL_50;
  }

  v122 = *(v116 + 16);
  v123 = 1;
LABEL_24:
  v125 = 0;
  v126 = v14;
  v127 = v31;
  while (2)
  {
    v32 = __OFADD__(v125, v123);
    v33 = v125 + v123;
    v125 += v123;
    if (v32)
    {
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    if (v18 == v31)
    {
      goto LABEL_113;
    }

LABEL_31:
    v32 = __OFADD__(v18++, 1);
    if (v32)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    while (1)
    {
      if (v18 == v31)
      {
        v18 = v31;
        goto LABEL_26;
      }

      if (v18 >= v31)
      {
        goto LABEL_108;
      }

      v34 = (v129 + 40 * v18);
      v16 = v34[1];
      v35 = v34[2];
      v37 = v34[3];
      v36 = v34[4];
      swift_getKeyPath();
      *&v139 = v14;
      sub_10019C84C(&qword_10190EB70, type metadata accessor for VisitHistoryFilterCitiesState);

      v38 = v35;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v39 = v14[5];
      if (!*(v39 + 16))
      {

        v31 = v127;
        goto LABEL_31;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      v40 = Hasher._finalize()();
      v41 = -1 << *(v39 + 32);
      v42 = v40 & ~v41;
      if ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        break;
      }

LABEL_43:

      v14 = v126;
      v31 = v127;
      v32 = __OFADD__(v18++, 1);
      if (v32)
      {
        goto LABEL_105;
      }
    }

    v43 = ~v41;
    while (1)
    {
      v44 = (*(v39 + 48) + 16 * v42);
      v45 = *v44 == v37 && v44[1] == v36;
      if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v42 = (v42 + 1) & v43;
      if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v14 = v126;
    v31 = v127;
LABEL_26:
    if (v18 != v122)
    {
      continue;
    }

    break;
  }

  v16 = v125;
  if (!v125)
  {
LABEL_50:

    v117 = _swiftEmptyArrayStorage;
    *(&v144 + 1) = _swiftEmptyArrayStorage;
    goto LABEL_91;
  }

  *&v131 = _swiftEmptyArrayStorage;
  result = sub_100511558(0, v125 & ~(v125 >> 63), 0);
  v123 = v131;
  v33 = *(v116 + 16);
  if (v33)
  {
    v46 = 0;
    v122 = *(v116 + 16);
    while (1)
    {
      v47 = (v129 + 40 * v46);
      v48 = v47[2];
      v50 = v47[3];
      v49 = v47[4];
      swift_getKeyPath();
      *&v139 = v14;
      sub_10019C84C(&qword_10190EB70, type metadata accessor for VisitHistoryFilterCitiesState);

      v51 = v48;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v52 = v14[5];
      if (*(v52 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v53 = Hasher._finalize()();
        v54 = -1 << *(v52 + 32);
        v55 = v53 & ~v54;
        if ((*(v52 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
        {
          v56 = ~v54;
          do
          {
            v57 = (*(v52 + 48) + 16 * v55);
            v58 = *v57 == v50 && v57[1] == v49;
            if (v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              v14 = v126;
              goto LABEL_64;
            }

            v55 = (v55 + 1) & v56;
          }

          while (((*(v52 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) != 0);
        }

        v14 = v126;
      }

      else
      {
      }

      ++v46;
      v33 = v122;
      if (v46 == v122)
      {
        goto LABEL_109;
      }
    }
  }

LABEL_106:
  v46 = v33;
  if (v16 < 0)
  {
    do
    {
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      v46 = v33;
LABEL_64:
      v31 = v127;
    }

    while (v125 < 0);
  }

  v59 = 0;
  v60 = v125;
  while (2)
  {
    if (v59 >= v60)
    {
      goto LABEL_114;
    }

    v32 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v32)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    if (v46 < 0)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    if (v46 >= v31)
    {
LABEL_117:
      __break(1u);
      return result;
    }

    v121 = v61;
    v62 = (v129 + 40 * v46);
    v63 = v62[1];
    v122 = *v62;
    v64 = v62[2];
    v65 = v123;
    *&v131 = v123;
    v67 = *(v123 + 16);
    v66 = *(v123 + 24);

    result = v64;
    if (v67 >= v66 >> 1)
    {
      v81 = result;
      sub_100511558((v66 > 1), v67 + 1, 1);
      result = v81;
      v65 = v131;
    }

    *(v65 + 16) = v67 + 1;
    v123 = v65;
    v68 = (v65 + 24 * v67);
    v68[4] = v122;
    v68[5] = v63;
    v68[6] = result;
    ++v46;
    while (1)
    {
      if (v46 == v31)
      {
        v46 = v31;
        goto LABEL_67;
      }

      if (v46 >= v31)
      {
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v69 = (v129 + 40 * v46);
      v70 = v69[2];
      v72 = v69[3];
      v71 = v69[4];
      swift_getKeyPath();
      *&v139 = v14;
      sub_10019C84C(&qword_10190EB70, type metadata accessor for VisitHistoryFilterCitiesState);

      v73 = v70;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v74 = v14[5];
      if (*(v74 + 16))
      {
        break;
      }

LABEL_76:
      v31 = v127;

      v32 = __OFADD__(v46++, 1);
      if (v32)
      {
        goto LABEL_111;
      }
    }

    Hasher.init(_seed:)();

    String.hash(into:)();
    v75 = Hasher._finalize()();
    v76 = -1 << *(v74 + 32);
    v77 = v75 & ~v76;
    if (((*(v74 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
    {
LABEL_88:

      v14 = v126;
      goto LABEL_76;
    }

    v78 = ~v76;
    while (1)
    {
      v79 = (*(v74 + 48) + 16 * v77);
      v80 = *v79 == v72 && v79[1] == v71;
      if (v80 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v77 = (v77 + 1) & v78;
      if (((*(v74 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    v14 = v126;
    v31 = v127;
LABEL_67:
    v59 = v121;
    v60 = v125;
    if (v121 != v125)
    {
      continue;
    }

    break;
  }

  *(&v144 + 1) = v123;
  v117 = v123;
LABEL_91:
  swift_getKeyPath();
  v82 = v120;
  *&v139 = v120;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v83 = *(v82 + 80);
  if (v83)
  {
    swift_getKeyPath();
    *&v139 = v83;
    sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v84 = OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState__currentSelection;
    swift_beginAccess();
    v85 = v112;
    sub_1000D2DFC(v83 + v84, v112, &qword_10190EB80);
    v86 = sub_1000CE6B8(&unk_10190EA08);
    if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
    {

      sub_100024F64(v85, &qword_10190EB80);
      v87 = v114;
      (*(v113 + 56))(v114, 1, 1, v111);
      goto LABEL_96;
    }

    v88 = v85 + *(v86 + 48);
    v87 = v114;
    sub_1000F11C4(v88, v114, &unk_10190EB90);
    v89 = v113;
    v90 = v111;
    (*(v113 + 56))(v87, 0, 1, v111);
    sub_10019CA4C(v85);
    if ((*(v89 + 48))(v87, 1, v90) == 1)
    {

LABEL_96:
      sub_100024F64(v87, &qword_10190EB88);
    }

    else
    {
      v91 = v110;
      sub_1000F11C4(v87, v110, &unk_10190EB90);
      sub_1000CE6B8(&qword_10190EBB8);
      v92 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v93 = swift_allocObject();
      *(v93 + 16) = xmmword_1011E1D30;
      sub_1000F11C4(v91, v93 + v92, &unk_10190EB90);

      *&v145 = v93;
    }
  }

  sub_100191458(v120 + 16, &v136);
  if (v138 > 1u)
  {
    if (v138 == 2)
    {
      sub_10005E7BC(&v136, &v139);
      sub_1000CE6B8(&unk_10190EBA0);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1011E1D30;
      sub_10005EB40(&v139, v96 + 32);
      sub_100251774(v96);
      swift_setDeallocating();
      sub_10004E3D0(v96 + 32);
      swift_deallocClassInstance();
      v97 = *(&v140 + 1);
      v98 = v141;
      sub_10005E838(&v139, *(&v140 + 1));
      v99 = (*(v98 + 40))(v97, v98);
      v101 = v100;

      *(&v146[0] + 1) = v99;
      *&v146[1] = v101;
      sub_10004E3D0(&v139);
    }
  }

  else
  {
    v94 = v136;
    if (v138)
    {
      sub_1000CE6B8(&qword_10190EBB0);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1011E1D30;
      *(v102 + 32) = v94;

      *&v144 = v102;

      *(v146 + 8) = xmmword_1011EBFE0;
    }

    else
    {
      v129 = v137;

      *(v146 + 8) = xmmword_1011EBFF0;
      sub_1000CE6B8(&qword_101924F80);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_1011E1D30;
      *(v95 + 32) = v94;
      *(v95 + 40) = v129;

      *(&v144 + 1) = v95;
    }
  }

  v103 = v152;
  v104 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
  v105 = MapsSyncRange.init(offset:limit:)();

  v147 = v105;
  v135 = v105;
  v133 = v146[0];
  v134 = v146[1];
  v131 = v144;
  v132 = v145;
  v143 = v105;
  v141 = v146[0];
  v142 = v146[1];
  v139 = v144;
  v140 = v145;
  sub_10019C99C(&v131, &v130);
  result = sub_10019C9F8(&v139);
  v106 = v134;
  v107 = v115;
  *(v115 + 32) = v133;
  *(v107 + 48) = v106;
  *(v107 + 64) = v135;
  v108 = v132;
  *v107 = v131;
  *(v107 + 16) = v108;
  return result;
}

void sub_1001979A4()
{
  v1 = *(v0 + 32);
  v19 = *(v1 + 16);
  if (v19)
  {
    v2 = 0;
    v17 = *(v0 + 32);
    v18 = v1 + 32;
    while (v2 < *(v1 + 16))
    {
      v3 = *(v18 + 8 * v2);
      swift_getKeyPath();
      sub_10019C84C(&qword_10190EB60, type metadata accessor for VisitHistoryFilterCategoriesState);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v4 = *(v0 + 40);

      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v6;
      if (*(v4 + 16))
      {
        v8 = v5;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v9 = Hasher._finalize()();
        v10 = -1 << *(v4 + 32);
        v11 = v9 & ~v10;
        if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = (*(v4 + 48) + 16 * v11);
            v14 = *v13 == v8 && v13[1] == v7;
            if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100511538(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v16 = _swiftEmptyArrayStorage[2];
          v15 = _swiftEmptyArrayStorage[3];
          if (v16 >= v15 >> 1)
          {
            sub_100511538((v15 > 1), v16 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v16 + 1;
          _swiftEmptyArrayStorage[v16 + 4] = v3;
          v1 = v17;
        }

        else
        {
LABEL_15:

          v1 = v17;
        }
      }

      else
      {
      }

      if (++v2 == v19)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100197C34@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState__currentSelection;
  swift_beginAccess();
  return sub_1000D2DFC(v5 + v3, a1, &qword_10190EB80);
}

uint64_t sub_100197D0C()
{
  sub_1000F1E68(v0 + 16);

  v1 = OBJC_IVAR____TtC4Maps23VisitHistoryFilterState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100197DF8()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100197EB4(unint64_t *a1, void (*a2)(uint64_t))
{
  v3 = *v2;
  v4 = sub_10019C84C(a1, a2);
  v5 = *(v4 + 24);

  v5(v3, v4);

  (v5)(v3, v4);

  return FilterBarOption.init(id:systemImageName:displayName:accessibilityIdentifier:accessibilityLabel:showDropdown:isSelected:subOptions:)();
}

uint64_t sub_100197FD4()
{
  swift_getKeyPath();
  sub_10019C84C(&qword_10190EB70, type metadata accessor for VisitHistoryFilterCitiesState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100198078@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10019C84C(&qword_10190EB70, type metadata accessor for VisitHistoryFilterCitiesState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_100198124(uint64_t a1)
{

  v4 = sub_10019CADC(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10019C84C(&qword_10190EB70, type metadata accessor for VisitHistoryFilterCitiesState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

Swift::String *sub_100198278(uint64_t a1)
{
  v2 = v1;
  v26 = type metadata accessor for UUID();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[1]._countAndFlagsBits = 0xD00000000000001DLL;
  v1[1]._object = 0x80000001011EC110;
  v1[2]._object = &_swiftEmptySetSingleton;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v29._object = 0x8000000101221150;
  v6._object = 0x8000000101221130;
  v29._countAndFlagsBits = 0xD000000000000032;
  v6._countAndFlagsBits = 0xD000000000000015;
  v7._countAndFlagsBits = 2037672259;
  v7._object = 0xE400000000000000;
  v1[3] = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, qword_1019600D8, v7, v29);
  ObservationRegistrar.init()();
  v8 = *(a1 + 16);
  if (v8)
  {
    v23 = v1;
    v28 = _swiftEmptyArrayStorage;
    sub_100511660(0, v8, 0);
    v9 = v28;
    v24 = (v4 + 8);
    v22[1] = a1;
    v10 = (a1 + 48);
    do
    {
      v11 = *(v10 - 1);
      v27 = *(v10 - 2);
      v12 = *v10;

      v13 = v12;
      v14 = v25;
      UUID.init()();
      v15 = UUID.uuidString.getter();
      v17 = v16;
      (*v24)(v14, v26);
      v28 = v9;
      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        sub_100511660((v18 > 1), v19 + 1, 1);
        v9 = v28;
      }

      v9[2] = v19 + 1;
      v20 = &v9[5 * v19];
      v20[4] = v27;
      v20[5] = v11;
      v20[6] = v13;
      v20[7] = v15;
      v20[8] = v17;
      v10 += 3;
      --v8;
    }

    while (v8);

    v2 = v23;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  v2[2]._countAndFlagsBits = v9;
  return v2;
}

uint64_t sub_10019851C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = a1;
  v4 = v1[4];
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_1005115FC(0, v5, 0);
    v6 = (v4 + 64);
    do
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 3);
      v10 = *(v6 - 1);
      v9 = *v6;
      v11 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];

      if (v11 >= v12 >> 1)
      {
        sub_1005115FC((v12 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v13 = &_swiftEmptyArrayStorage[6 * v11];
      v13[4] = v10;
      v13[5] = v9;
      v13[6] = v7;
      v13[7] = v8;
      v13[8] = 0xD00000000000001BLL;
      v13[9] = 0x8000000101220E70;
      v6 += 5;
      --v5;
    }

    while (v5);
    v2 = v1;
    v3 = a1;
  }

  v15 = v2[2];
  v14 = v2[3];
  v16 = v2[7];
  v22 = v2[6];
  sub_1000CE6B8(&qword_10190EBF0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1011E1D30;
  swift_bridgeObjectRetain_n();

  v18 = sub_100193344(_swiftEmptyArrayStorage);

  swift_getKeyPath();
  sub_10019C84C(&qword_10190EB70, type metadata accessor for VisitHistoryFilterCitiesState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = v2[5];
  *(v17 + 32) = v15;
  *(v17 + 40) = v14;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0xE000000000000000;
  *(v17 + 64) = v18;
  *(v17 + 72) = v19;
  *(v17 + 80) = 0xD00000000000001DLL;
  *(v17 + 88) = 0x8000000101220E90;
  *v3 = v15;
  *(v3 + 8) = v14;
  *(v3 + 16) = v22;
  *(v3 + 24) = v16;
  *(v3 + 32) = v17;
  *(v3 + 40) = 20;
  *(v3 + 48) = 0;
}

double sub_100198790@<D0>(uint64_t a1@<X8>)
{
  sub_10019851C(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_10019883C()
{
  swift_getKeyPath();
  sub_10019C84C(&qword_10190EB60, type metadata accessor for VisitHistoryFilterCategoriesState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1001988E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10019C84C(&qword_10190EB60, type metadata accessor for VisitHistoryFilterCategoriesState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_10019898C(uint64_t a1)
{

  v4 = sub_10019CADC(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10019C84C(&qword_10190EB60, type metadata accessor for VisitHistoryFilterCategoriesState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

Swift::String *sub_100198AE0(uint64_t a1)
{
  v1[1]._countAndFlagsBits = 0xD000000000000021;
  v1[1]._object = 0x80000001011EC170;
  v1[2]._object = &_swiftEmptySetSingleton;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v6._object = 0x80000001012210F0;
  v3._countAndFlagsBits = 0x79726F6765746143;
  v4._object = 0x80000001012210D0;
  v6._countAndFlagsBits = 0xD00000000000003CLL;
  v4._countAndFlagsBits = 0xD000000000000019;
  v3._object = 0xE800000000000000;
  v1[3] = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, qword_1019600D8, v3, v6);
  ObservationRegistrar.init()();
  v1[2]._countAndFlagsBits = a1;
  return v1;
}

uint64_t sub_100198BE0@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    sub_1005115FC(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;
      v11 = sub_1002132FC(v7);
      v28 = v5;
      v14 = v5[2];
      v13 = v5[3];
      if (v14 >= v13 >> 1)
      {
        v24 = v11;
        v16 = v12;
        sub_1005115FC((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v24;
        v5 = v28;
      }

      v5[2] = v14 + 1;
      v15 = &v5[6 * v14];
      v15[4] = v8;
      v15[5] = v10;
      v15[6] = v11;
      v15[7] = v12;
      v15[8] = 0xD00000000000001BLL;
      v15[9] = 0x8000000101220E70;
      --v4;
    }

    while (v4);
    v2 = a1;
  }

  v18 = v27[2];
  v17 = v27[3];
  v19 = v27[7];
  v26 = v27[6];
  sub_1000CE6B8(&qword_10190EBF0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1011E1D30;
  swift_bridgeObjectRetain_n();

  v21 = sub_100193344(v5);

  swift_getKeyPath();
  sub_10019C84C(&qword_10190EB60, type metadata accessor for VisitHistoryFilterCategoriesState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = v27[5];
  *(v20 + 32) = v18;
  *(v20 + 40) = v17;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0xE000000000000000;
  *(v20 + 64) = v21;
  *(v20 + 72) = v22;
  *(v20 + 80) = 0xD00000000000001DLL;
  *(v20 + 88) = 0x8000000101220E90;
  *v2 = v18;
  *(v2 + 8) = v17;
  *(v2 + 16) = v26;
  *(v2 + 24) = v19;
  *(v2 + 32) = v20;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
}

uint64_t sub_100198E4C(uint64_t *a1)
{

  v3 = *a1;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100198F30()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_100198FDC@<D0>(uint64_t a1@<X8>)
{
  sub_100198BE0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_100199040(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (*(result + 16))
  {

    return a4(v4);
  }

  return result;
}

uint64_t sub_1001990DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState__currentSelection;
  swift_beginAccess();
  return sub_1000D2DFC(v3 + v4, a2, &qword_10190EB80);
}

uint64_t sub_1001991B4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000CE6B8(&qword_10190EB80);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_1000D2DFC(a1, &v9[-v5], &qword_10190EB80);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100024F64(v6, &qword_10190EB80);
}

uint64_t sub_100199304(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState__currentSelection;
  swift_beginAccess();
  sub_10019CD04(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100199370()
{
  v1 = v0;
  v2 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v129 = *(v2 - 8);
  v130 = v2;
  __chkstk_darwin(v2);
  v105 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.DateStyle();
  v127 = *(v4 - 8);
  v128 = v4;
  __chkstk_darwin(v4);
  v104 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&unk_10190EB90);
  __chkstk_darwin(v6 - 8);
  v103 = &v100 - v7;
  v8 = sub_1000CE6B8(&unk_10190EB28);
  v135 = *(v8 - 8);
  v136 = v8;
  __chkstk_darwin(v8);
  v124 = &v100 - v9;
  v10 = sub_1000CE6B8(&qword_10190EBC8);
  __chkstk_darwin(v10 - 8);
  v134 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v137 = &v100 - v13;
  v123 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v16 - 8);
  v117 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Calendar();
  __chkstk_darwin(v18 - 8);
  v114 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  __chkstk_darwin(v20 - 8);
  v113 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000CE6B8(&qword_10190EC18);
  __chkstk_darwin(v22 - 8);
  v111 = &v100 - v23;
  v24 = sub_1000CE6B8(&qword_10190EC20);
  __chkstk_darwin(v24 - 8);
  v108 = &v100 - v25;
  v116 = type metadata accessor for Date.FormatStyle();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v109 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v110 = &v100 - v28;
  __chkstk_darwin(v29);
  v112 = &v100 - v30;
  v126 = type metadata accessor for TimeZone();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v138 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Date();
  v140 = *(v32 - 8);
  v141 = v32;
  __chkstk_darwin(v32);
  v102 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v101 = &v100 - v35;
  __chkstk_darwin(v36);
  v107 = &v100 - v37;
  __chkstk_darwin(v38);
  v106 = &v100 - v39;
  v40 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v40 - 8);
  v133 = &v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v139 = &v100 - v43;
  __chkstk_darwin(v44);
  v131 = &v100 - v45;
  __chkstk_darwin(v46);
  v132 = &v100 - v47;
  v48 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  __chkstk_darwin(v48);
  v50 = &v100 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000CE6B8(&qword_10190EB80);
  __chkstk_darwin(v51 - 8);
  v53 = &v100 - v52;
  v54 = sub_1000CE6B8(&unk_10190EA08);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = &v100 - v56;
  swift_getKeyPath();
  v143 = v0;
  sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState__currentSelection;
  swift_beginAccess();
  sub_1000D2DFC(v1 + v58, v53, &qword_10190EB80);
  if ((*(v55 + 48))(v53, 1, v54) != 1)
  {
    sub_1000F11C4(v53, v57, &unk_10190EA08);
    sub_10019CE30(v57, v50, type metadata accessor for VisitHistoryFilterDatePickerMode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v62 = v57;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v63 = &qword_10190EBD0;
        v64 = v50;
        v65 = v139;
        sub_1000F11C4(v64, v139, &qword_10190EBD0);
        v66 = v133;
        sub_1000D2DFC(v65, v133, &qword_10190EBD0);
        v68 = v140;
        v67 = v141;
        if ((*(v140 + 48))(v66, 1, v141) != 1)
        {
          v77 = *(v68 + 32);
          v137 = v57;
          v78 = v107;
          v77(v107, v66, v67);
          (*(v127 + 56))(v108, 1, 1, v128);
          (*(v129 + 56))(v111, 1, 1, v130);
          static Locale.autoupdatingCurrent.getter();
          static Calendar.autoupdatingCurrent.getter();
          static TimeZone.autoupdatingCurrent.getter();
          static FormatStyleCapitalizationContext.unknown.getter();
          v79 = v109;
          Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
          v80 = v118;
          static Date.FormatStyle.Symbol.Month.abbreviated.getter();
          v81 = v110;
          Date.FormatStyle.month(_:)();
          (*(v119 + 8))(v80, v120);
          v82 = *(v115 + 8);
          v83 = v116;
          v82(v79, v116);
          v84 = v121;
          static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
          v85 = v112;
          Date.FormatStyle.year(_:)();
          (*(v122 + 8))(v84, v123);
          v82(v81, v83);
          sub_10019C84C(&qword_10190EC28, &type metadata accessor for Date.FormatStyle);
          Date.formatted<A>(_:)();
          v82(v85, v83);
          (*(v68 + 8))(v78, v67);
          sub_100024F64(v139, &qword_10190EBD0);
          sub_100024F64(v137, &unk_10190EA08);
          return v142;
        }

        sub_100024F64(v65, &qword_10190EBD0);
        sub_100024F64(v57, &unk_10190EA08);
        v60 = v66;
        goto LABEL_11;
      }

      v69 = v137;
      sub_1000F11C4(v50, v137, &qword_10190EBC8);
      v73 = v134;
      sub_1000D2DFC(v69, v134, &qword_10190EBC8);
      v74 = v136;
      if ((*(v135 + 48))(v73, 1, v136) == 1)
      {
        v63 = &qword_10190EBC8;
        sub_100024F64(v69, &qword_10190EBC8);
        sub_100024F64(v62, &unk_10190EA08);
        v60 = v73;
        goto LABEL_11;
      }

      v89 = v124;
      sub_1000F11C4(v73, v124, &unk_10190EB28);
      v90 = *(v74 + 36);
      if (static Date.== infix(_:_:)())
      {
        v91 = v138;
        static TimeZone.current.getter();
        v75 = Date.formattedMonthDayYear(timeZone:)();
        (*(v125 + 8))(v91, v126);
      }

      else
      {
        v92 = v141;
        v93 = *(v140 + 16);
        v94 = v101;
        v93(v101, v89, v141);
        v95 = v89 + v90;
        v96 = v102;
        v93(v102, v95, v92);
        v97 = v103;
        sub_10019A48C(v94, v96, v103);
        v98 = v104;
        static Date.FormatStyle.DateStyle.abbreviated.getter();
        v99 = v105;
        static Date.FormatStyle.TimeStyle.omitted.getter();
        v75 = Range<>.formatted(date:time:)();
        (*(v129 + 8))(v99, v130);
        (*(v127 + 8))(v98, v128);
        sub_100024F64(v97, &unk_10190EB90);
      }

      sub_100024F64(v89, &unk_10190EB28);
      v88 = &qword_10190EBC8;
    }

    else
    {
      v63 = &qword_10190EBD0;
      v69 = v132;
      sub_1000F11C4(v50, v132, &qword_10190EBD0);
      v70 = v131;
      sub_1000D2DFC(v69, v131, &qword_10190EBD0);
      v72 = v140;
      v71 = v141;
      if ((*(v140 + 48))(v70, 1, v141) == 1)
      {
        sub_100024F64(v69, &qword_10190EBD0);
        sub_100024F64(v62, &unk_10190EA08);
        v60 = v70;
LABEL_11:
        v59 = v63;
        goto LABEL_12;
      }

      v86 = v106;
      (*(v72 + 32))(v106, v70, v71);
      v87 = v138;
      static TimeZone.current.getter();
      v75 = Date.formattedMonthDayYear(timeZone:)();
      (*(v125 + 8))(v87, v126);
      (*(v72 + 8))(v86, v71);
      v88 = &qword_10190EBD0;
    }

    sub_100024F64(v69, v88);
    sub_100024F64(v62, &unk_10190EA08);
    return v75;
  }

  v59 = &qword_10190EB80;
  v60 = v53;
LABEL_12:
  sub_100024F64(v60, v59);
  v75 = *(v1 + 16);

  return v75;
}

uint64_t sub_10019A48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a1;
  v34 = a3;
  v4 = sub_1000CE6B8(&qword_10190EBC0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v31 = &v29 - v8;
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 32);
  v20(v17, v32, v18);
  v20(&v17[*(v5 + 56)], a2, v18);
  v30 = v14;
  sub_1000D2DFC(v17, v14, &qword_10190EBC0);
  v32 = *(v5 + 56);
  v29 = v11;
  sub_1000F11C4(v17, v11, &qword_10190EBC0);
  v21 = *(v5 + 56);
  v22 = v31;
  v20(v31, v14, v18);
  v20((v22 + *(v5 + 56)), &v11[v21], v18);
  v23 = v33;
  sub_1000D2DFC(v22, v33, &qword_10190EBC0);
  v24 = *(v5 + 56);
  v20(v34, v23, v18);
  v25 = *(v19 + 8);
  v25(v23 + v24, v18);
  sub_1000F11C4(v22, v23, &qword_10190EBC0);
  v26 = *(v5 + 56);
  v27 = sub_1000CE6B8(&unk_10190EB90);
  v20(&v34[*(v27 + 36)], v23 + v26, v18);
  v25(v23, v18);
  v25(v29, v18);
  return (v25)(&v30[v32], v18);
}

uint64_t sub_10019A798@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v9 = a1;
  v3 = sub_1000CE6B8(&qword_10190EB80);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  sub_100199370();
  swift_getKeyPath();
  v10 = v1;
  sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState__currentSelection;
  swift_beginAccess();
  sub_1000D2DFC(v2 + v6, v5, &qword_10190EB80);
  v7 = sub_1000CE6B8(&unk_10190EA08);
  (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_100024F64(v5, &qword_10190EB80);
  sub_10019A99C();
  return FilterBarOption.init(id:systemImageName:displayName:accessibilityIdentifier:accessibilityLabel:showDropdown:isSelected:subOptions:)();
}

void *sub_10019A99C()
{
  v1 = v0;
  v2 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v2 - 8);
  v51 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v50 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  v53 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v36 - v10;
  __chkstk_darwin(v12);
  v52 = v36 - v13;
  v49 = type metadata accessor for FilterBarOption.SubOption();
  v14 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000CE6B8(&qword_10190EB80);
  __chkstk_darwin(v16 - 8);
  v18 = v36 - v17;
  swift_getKeyPath();
  v55 = v0;
  sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState__currentSelection;
  swift_beginAccess();
  sub_1000D2DFC(v1 + v19, v18, &qword_10190EB80);
  v20 = sub_1000CE6B8(&unk_10190EA08);
  LODWORD(v19) = (*(*(v20 - 8) + 48))(v18, 1, v20);
  sub_100024F64(v18, &qword_10190EB80);
  result = _swiftEmptyArrayStorage;
  if (v19 == 1)
  {
    sub_1000CE6B8(&qword_10190EC10);
    v22 = v53[9];
    v23 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v37 = swift_allocObject();
    v24 = v37 + v23;
    v25 = type metadata accessor for Date();
    v26 = *(*(v25 - 8) + 56);
    v26(v24, 1, 1, v25);
    swift_storeEnumTagMultiPayload();
    v26(v24 + v22, 1, 1, v25);
    v43 = v22;
    swift_storeEnumTagMultiPayload();
    v27 = sub_1000CE6B8(&unk_10190EB28);
    (*(*(v27 - 8) + 56))(v24 + 2 * v22, 1, 1, v27);
    swift_storeEnumTagMultiPayload();
    v54 = _swiftEmptyArrayStorage;
    v28 = 3;
    sub_100511228(0, 3, 0);
    v53 = v54;
    v41 = "Date filter - monthAndYear";
    v42 = v14 + 32;
    v40 = "calendar.badge.ring.closed";
    v38 = 0x8000000101220EF0;
    v39 = "VisitHistoryDatePickerFilter";
    v36[1] = v24;
    v29 = v24;
    v46 = v8;
    v47 = v6;
    v44 = v14;
    v45 = v11;
    v30 = v52;
    do
    {
      sub_10019CE30(v29, v30, type metadata accessor for VisitHistoryFilterDatePickerMode);
      sub_10019CE30(v30, v11, type metadata accessor for VisitHistoryFilterDatePickerMode);
      swift_getEnumCaseMultiPayload();
      sub_10019CA4C(v11);
      sub_10019CE30(v30, v8, type metadata accessor for VisitHistoryFilterDatePickerMode);
      swift_getEnumCaseMultiPayload();
      sub_10019CA4C(v8);
      sub_10019B0D8();
      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v31 = v48;
      v30 = v52;
      FilterBarOption.SubOption.init(id:displayImage:displayName:isSelected:)();
      sub_10019CA4C(v30);
      v32 = v53;
      v54 = v53;
      v34 = v53[2];
      v33 = v53[3];
      if (v34 >= v33 >> 1)
      {
        sub_100511228(v33 > 1, v34 + 1, 1);
        v32 = v54;
      }

      v32[2] = v34 + 1;
      v35 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v53 = v32;
      (*(v44 + 32))(v32 + v35 + *(v44 + 72) * v34, v31, v49);
      v29 += v43;
      --v28;
      v8 = v46;
      v11 = v45;
    }

    while (v28);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v53;
  }

  return result;
}

uint64_t sub_10019B0D8()
{
  v1 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  __chkstk_darwin(v1);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10019CE30(v0, v3, type metadata accessor for VisitHistoryFilterDatePickerMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1019600D8;
      v13 = 0x8000000101221000;
      v6 = 0x20262068746E6F4DLL;
      v7 = 0xEC00000072616559;
      v8 = 0xD00000000000002BLL;
      v9 = 0x8000000101220FD0;
      v10 = 0xD00000000000004BLL;
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v5.super.isa = qword_1019600D8;
      v13 = 0x8000000101220F80;
      v6 = 0x6E61522065746144;
      v9 = 0x8000000101220F50;
      v10 = 0xD000000000000049;
      v8 = 0xD000000000000029;
      v7 = 0xEA00000000006567;
    }
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v5.super.isa = qword_1019600D8;
    v13 = 0x8000000101221080;
    v6 = 0x6369666963657053;
    v7 = 0xED00006574614420;
    v8 = 0xD00000000000002CLL;
    v9 = 0x8000000101221050;
    v10 = 0xD00000000000004CLL;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v5, *&v6, *&v10)._countAndFlagsBits;
  sub_10019CA4C(v3);
  return countAndFlagsBits;
}

uint64_t sub_10019B348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  v14 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD00000000000001ALL && 0x8000000101220F30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD00000000000001ALL && 0x8000000101220F10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v9 = type metadata accessor for Date();
LABEL_5:
    (*(*(v9 - 8) + 56))(v8, 1, 1);
    swift_storeEnumTagMultiPayload();
    sub_10019CDCC(v8, a3);
    return (*(v14 + 56))(a3, 0, 1, v6);
  }

  if (a1 == 0xD000000000000017 && 0x8000000101220ED0 == a2)
  {

LABEL_14:
    v9 = sub_1000CE6B8(&unk_10190EB28);
    goto LABEL_5;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_14;
  }

  v12 = *(v14 + 56);

  return v12(a3, 1, 1, v6);
}

uint64_t sub_10019B5E0@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v96 = sub_1000CE6B8(&qword_10190EBC0);
  __chkstk_darwin(v96);
  v95 = &v94 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v94 = &v94 - v3;
  v107 = sub_1000CE6B8(&unk_10190EB28);
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v102 = &v94 - v4;
  v5 = sub_1000CE6B8(&qword_10190EBC8);
  __chkstk_darwin(v5 - 8);
  v104 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = &v94 - v8;
  v9 = type metadata accessor for Calendar();
  v108 = *(v9 - 8);
  v109 = v9;
  __chkstk_darwin(v9);
  v112 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CE6B8(&qword_10190EB88);
  __chkstk_darwin(v11 - 8);
  v99 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v101 = &v94 - v14;
  __chkstk_darwin(v15);
  v100 = &v94 - v16;
  __chkstk_darwin(v17);
  v19 = &v94 - v18;
  v20 = sub_1000CE6B8(&unk_10190EB90);
  v113 = *(v20 - 8);
  v114 = v20;
  __chkstk_darwin(v20);
  v97 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v103 = &v94 - v23;
  __chkstk_darwin(v24);
  v98 = &v94 - v25;
  __chkstk_darwin(v26);
  v28 = &v94 - v27;
  v29 = type metadata accessor for Date();
  v110 = *(v29 - 8);
  v111 = v29;
  __chkstk_darwin(v29);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v94 - v33;
  v35 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v35 - 8);
  v37 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v94 - v39;
  __chkstk_darwin(v41);
  v43 = &v94 - v42;
  __chkstk_darwin(v44);
  v46 = &v94 - v45;
  v47 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  __chkstk_darwin(v47);
  v49 = &v94 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10019CE30(v116, v49, type metadata accessor for VisitHistoryFilterDatePickerMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v116 = v28;
    sub_1000F11C4(v49, v46, &qword_10190EBD0);
    sub_1000D2DFC(v46, v43, &qword_10190EBD0);
    v58 = v110;
    v57 = v111;
    if ((*(v110 + 48))(v43, 1, v111) == 1)
    {
      sub_100024F64(v46, &qword_10190EBD0);
      v56 = v43;
      v59 = &qword_10190EBD0;
LABEL_10:
      sub_100024F64(v56, v59);
      v64 = 1;
      v66 = v114;
      v65 = v115;
      v67 = v113;
      return (*(v67 + 56))(v65, v64, 1, v66);
    }

    (*(v58 + 32))(v34, v43, v57);
    v71 = v112;
    static Calendar.current.getter();
    sub_10051D918(v19);
    v108[1](v71, v109);
    (*(v58 + 8))(v34, v57);
    sub_100024F64(v46, &qword_10190EBD0);
    v67 = v113;
    v66 = v114;
    v72 = (*(v113 + 48))(v19, 1, v114);
    v65 = v115;
    if (v72 == 1)
    {
      v70 = v19;
      goto LABEL_22;
    }

    v77 = v19;
    v78 = v116;
LABEL_19:
    sub_1000F11C4(v77, v78, &unk_10190EB90);
    sub_1000F11C4(v78, v65, &unk_10190EB90);
    v64 = 0;
    return (*(v67 + 56))(v65, v64, 1, v66);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1000F11C4(v49, v40, &qword_10190EBD0);
    sub_1000D2DFC(v40, v37, &qword_10190EBD0);
    v52 = v110;
    v51 = v111;
    v53 = (*(v110 + 48))(v37, 1, v111);
    v54 = v112;
    if (v53 == 1)
    {
      v55 = &qword_10190EBD0;
      sub_100024F64(v40, &qword_10190EBD0);
      v56 = v37;
LABEL_9:
      v59 = v55;
      goto LABEL_10;
    }

    (*(v52 + 32))(v31, v37, v51);
    static Calendar.current.getter();
    v68 = v100;
    sub_10051D924(v100);
    v108[1](v54, v109);
    (*(v52 + 8))(v31, v51);
    sub_100024F64(v40, &qword_10190EBD0);
    v67 = v113;
    v66 = v114;
    v69 = (*(v113 + 48))(v68, 1, v114);
    v65 = v115;
    if (v69 == 1)
    {
      v70 = v68;
LABEL_22:
      sub_100024F64(v70, &qword_10190EB88);
      v64 = 1;
      return (*(v67 + 56))(v65, v64, 1, v66);
    }

    v77 = v68;
    v78 = v98;
    goto LABEL_19;
  }

  v55 = &qword_10190EBC8;
  v60 = v106;
  sub_1000F11C4(v49, v106, &qword_10190EBC8);
  v61 = v104;
  sub_1000D2DFC(v60, v104, &qword_10190EBC8);
  v62 = (*(v105 + 48))(v61, 1, v107);
  v63 = v112;
  if (v62 == 1)
  {
    sub_100024F64(v60, &qword_10190EBC8);
    v56 = v61;
    goto LABEL_9;
  }

  v73 = v102;
  sub_1000F11C4(v61, v102, &unk_10190EB28);
  static Calendar.current.getter();
  v74 = v101;
  sub_10051D918(v101);
  v75 = v109;
  v76 = v108[1];
  (v76)(v63, v109);
  v67 = v113;
  v66 = v114;
  v116 = *(v113 + 48);
  if ((v116)(v74, 1, v114) == 1)
  {
    sub_100024F64(v73, &unk_10190EB28);
    sub_100024F64(v60, &qword_10190EBC8);
    sub_100024F64(v74, &qword_10190EB88);
    v64 = 1;
    v65 = v115;
    return (*(v67 + 56))(v65, v64, 1, v66);
  }

  sub_1000F11C4(v74, v103, &unk_10190EB90);
  v108 = v76;
  static Calendar.current.getter();
  v79 = v99;
  sub_10051D918(v99);
  (v108)(v63, v75);
  v80 = (v116)(v79, 1, v66);
  v81 = v73;
  v65 = v115;
  if (v80 == 1)
  {
    sub_100024F64(v103, &unk_10190EB90);
    sub_100024F64(v81, &unk_10190EB28);
    sub_100024F64(v60, &qword_10190EBC8);
    v70 = v79;
    goto LABEL_22;
  }

  sub_1000F11C4(v79, v97, &unk_10190EB90);
  v83 = *(v66 + 36);
  sub_10019C84C(&qword_10190EBD8, &type metadata accessor for Date);
  v116 = v83;
  v84 = v111;
  LOBYTE(v83) = dispatch thunk of static Comparable.<= infix(_:_:)();
  sub_100024F64(v81, &unk_10190EB28);
  result = sub_100024F64(v60, &qword_10190EBC8);
  if (v83)
  {
    v85 = v110;
    v86 = *(v110 + 16);
    v87 = v94;
    v88 = v103;
    v86(v94, v103, v84);
    sub_100024F64(v88, &unk_10190EB90);
    v90 = v96;
    v89 = v97;
    v86((v87 + *(v96 + 48)), v97 + v116, v84);
    sub_100024F64(v89, &unk_10190EB90);
    v91 = v95;
    sub_1000D2DFC(v87, v95, &qword_10190EBC0);
    v116 = *(v90 + 48);
    v92 = *(v85 + 32);
    v92(v65, v91, v84);
    v93 = *(v85 + 8);
    v93(v91 + v116, v84);
    sub_1000F11C4(v87, v91, &qword_10190EBC0);
    v92(v65 + *(v66 + 36), v91 + *(v96 + 48), v84);
    v93(v91, v84);
    v64 = 0;
    return (*(v67 + 56))(v65, v64, 1, v66);
  }

  __break(1u);
  return result;
}

uint64_t sub_10019C320()
{

  sub_100024F64(v0 + OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState__currentSelection, &qword_10190EB80);
  v1 = OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_10019C40C()
{
  sub_10019C5FC(319, &qword_10190EA00, &unk_10190EA08);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10019C518()
{
  sub_10019C5A4();
  if (v0 <= 0x3F)
  {
    sub_10019C5FC(319, &qword_10190EB20, &unk_10190EB28);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10019C5A4()
{
  if (!qword_10190EB18)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10190EB18);
    }
  }
}

void sub_10019C5FC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000D6664(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::String *sub_10019C650()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v7._object = 0x80000001012211C0;
  v1._object = 0x8000000101221190;
  v7._countAndFlagsBits = 0xD000000000000040;
  v1._countAndFlagsBits = 0xD000000000000025;
  v2._countAndFlagsBits = 1702125892;
  v2._object = 0xE400000000000000;
  v0[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v2, v7);
  v3 = OBJC_IVAR____TtC4Maps32VisitHistoryFilterDateRangeState__currentSelection;
  v4 = sub_1000CE6B8(&unk_10190EA08);
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + v3, 1, 1, v4);
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_10019C79C(uint64_t a1)
{
  result = sub_10019C84C(&qword_10190EB58, type metadata accessor for VisitHistoryFilterDateRangeState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10019C7F4(uint64_t a1)
{
  result = sub_10019C84C(&qword_10190EB60, type metadata accessor for VisitHistoryFilterCategoriesState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10019C84C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019C894(uint64_t a1)
{
  result = sub_10019C84C(&qword_10190EB68, type metadata accessor for VisitHistoryFilterCategoriesState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10019C8EC(uint64_t a1)
{
  result = sub_10019C84C(&qword_10190EB70, type metadata accessor for VisitHistoryFilterCitiesState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10019C944(uint64_t a1)
{
  result = sub_10019C84C(&qword_10190EB78, type metadata accessor for VisitHistoryFilterCitiesState);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10019CA4C(uint64_t a1)
{
  v2 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019CADC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10019CCAC()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_10019CD04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190EB80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019CDCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitHistoryFilterDatePickerMode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019CE30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10019CE98()
{
  result = qword_10190EBF8;
  if (!qword_10190EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190EBF8);
  }

  return result;
}

unint64_t sub_10019CF48()
{
  result = qword_10190EC30;
  if (!qword_10190EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190EC30);
  }

  return result;
}

unint64_t sub_10019CFF0()
{
  result = qword_10190EC38;
  if (!qword_10190EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190EC38);
  }

  return result;
}

unint64_t sub_10019D098()
{
  result = qword_10190EC40;
  if (!qword_10190EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190EC40);
  }

  return result;
}

void sub_10019D0EC(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_10019D364(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_100014C84(0, &qword_101922CC0);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = NSObject._rawHashValue(seed:)(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_10019D364(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10019D47C()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_10019D4B8()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_10019D4F4()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_10019D530()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 88) = v0[3];
  *(v1 + 96) = v2;
}

uint64_t sub_10019D590(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (String.init<A>(describing:)() == a1 && v5 == a2)
  {
    goto LABEL_13;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return v4;
  }

  v4 = 1;
  if (String.init<A>(describing:)() == a1 && v8 == a2)
  {
LABEL_13:

    return v4;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10019D6CC()
{
  result = type metadata accessor for VisitHistoryFilterDatePickerMode(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10019D8DC(uint64_t a1, uint64_t a2)
{
  sub_10017A750(a2, v22);
  v5 = v23;
  if (v23)
  {
    v6 = sub_10005E838(v22, v23);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_10004E3D0(v22);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for LibraryAddCollectionItemViewController();
  v21.receiver = v2;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "searchDataSource:shouldFilterItem:", a1, v11);
  swift_unknownObjectRelease();
  if (v13)
  {
    return 1;
  }

  sub_10017A750(a2, v22);
  if (v23)
  {
    sub_10019E470();
    if (swift_dynamicCast())
    {
      v15 = v20;
      v16 = [v20 mapItem];
      if (v16)
      {
        v17 = v16;
        v18 = sub_10019E000(v16, &type metadata accessor for CollectionPlaceItemRequest, &CollectionPlaceItemRequest.__allocating_init(), &dispatch thunk of CollectionPlaceItemRequest.fetchSync(options:));

        if (v18)
        {

          return 1;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000DB2F4(v22);
  }

  return 0;
}

void sub_10019DBAC(void *a1)
{
  v3 = sub_10019E000(a1, &type metadata accessor for CollectionPlaceItemRequest, &CollectionPlaceItemRequest.__allocating_init(), &dispatch thunk of CollectionPlaceItemRequest.fetchSync(options:));
  if (v3)
  {
LABEL_2:

    return;
  }

  v4 = [a1 _geoMapItem];
  if (!v4)
  {
    return;
  }

  v5 = [objc_opt_self() mapItemStorageForGEOMapItem:v4];
  if (v5)
  {
    v13 = v5;
    if ([a1 _maps_canRenameCollectionItem])
    {
      v6 = objc_opt_self();
      v7 = swift_allocObject();
      v7[2] = v1;
      v7[3] = a1;
      v7[4] = v13;
      aBlock[4] = sub_10019E460;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100534B00;
      aBlock[3] = &unk_101608008;
      v8 = _Block_copy(aBlock);
      v9 = v1;
      v10 = a1;
      v11 = v13;

      v12 = [v6 _maps_viewControllerForRenamingMapItem:v10 saveHandler:v8 cancelHandler:0];
      _Block_release(v8);
      [v9 presentViewController:v12 animated:1 completion:0];

      swift_unknownObjectRelease();
      return;
    }

    sub_10019E250(a1, v13, 0, 0);
    swift_unknownObjectRelease();
    v3 = v13;
    goto LABEL_2;
  }

  swift_unknownObjectRelease();
}

id sub_10019DFA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryAddCollectionItemViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10019E000(void *a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void *))
{
  result = [a1 _geoMapItem];
  if (result)
  {
    v9 = [a1 _geoMapItemStorageForPersistence];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 userValues];

      if (v11)
      {
        v12 = [v11 name];

        if (v12)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }
    }

    v13 = objc_allocWithZone(type metadata accessor for MapsSyncQueryPredicate());
    v14 = MapsSyncQueryPredicate.init(mapItem:customName:)();
    v15 = objc_allocWithZone(type metadata accessor for MapsSyncRange());
    v16 = v14;
    MapsSyncRange.init(offset:limit:)();
    v17 = objc_allocWithZone(type metadata accessor for MapsSyncQueryOptions());
    v18 = MapsSyncQueryOptions.init(predicate:sortDescriptors:range:)();
    a2(0);
    v19 = a3();
    v20 = v18;
    v21 = a4(v18);

    if (v21 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_8:
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_11;
        }

        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v22 = *(v21 + 32);
LABEL_11:
          v23 = v22;

          return v23;
        }

        __break(1u);
        goto LABEL_16;
      }
    }

    return 0;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_10019E250(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v7 - 8);
  type metadata accessor for CollectionPlaceItem();
  v8 = MapsSyncObject.__allocating_init()();
  v9 = a2;
  dispatch thunk of CollectionPlaceItem.mapItemStorage.setter();
  if (!a4)
  {
    v10 = [a1 name];
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  dispatch thunk of CollectionPlaceItem.customName.setter();
  v12 = sub_10019E000(a1, &type metadata accessor for FavoriteItemRequest, &FavoriteItemRequest.__allocating_init(), &dispatch thunk of FavoriteItemRequest.fetchSync(options:));
  if (v12)
  {
    v13 = v12;
    dispatch thunk of CollectionPlaceItem.type.setter();
    v14 = v13;
    dispatch thunk of MapsSyncObject.identifier.getter();

    dispatch thunk of CollectionPlaceItem.originalIdentifier.setter();
  }

  type metadata accessor for MapsSyncStore();
  v15 = static MapsSyncStore.sharedStore.getter();
  sub_1000CE6B8(&qword_101908400);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1011E47B0;
  *(v16 + 32) = v8;
  v17 = v8;
  dispatch thunk of MapsSyncStore.save(_:)();
}

unint64_t sub_10019E470()
{
  result = qword_10190ED68;
  if (!qword_10190ED68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190ED68);
  }

  return result;
}

uint64_t type metadata accessor for PlaceListCellViewModel()
{
  result = qword_10190EDB8;
  if (!qword_10190EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019E5DC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Int sub_10019E680(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10056D578(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for GEOEVChargerPlugConnectorType(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1001A0D60(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

id sub_10019E990()
{
  v1 = OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel____lazy_storage___chargerSymbolString;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel____lazy_storage___chargerSymbolString);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_10019E9FC();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10005D280(v4);
  }

  sub_10005D270(v2);
  return v3;
}

id sub_10019E9FC()
{
  result = [objc_opt_self() _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightThin];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    v3 = [objc_opt_self() configurationWithFont:v1 scale:1];

    v4 = [v2 evPlugIconWithConfiguration:v3];
    if (!v4)
    {
      return 0;
    }

    v5 = [objc_opt_self() textAttachmentWithImage:v4];
    v6 = [objc_opt_self() attributedStringWithAttachment:v5];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CarPlaceCardEVChargingViewModel.init(mapItem:virtualGarageService:)(void *a1, void *a2)
{
  v5 = [a1 _identifier];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  result = [a1 _geoMapItem];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = [result _evCharger];
  swift_unknownObjectRelease();
  if (!v8)
  {

LABEL_12:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = [v8 plugs];

  sub_100014C84(0, &qword_10190EDD0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (_CocoaArrayWrapper.endIndex.getter() <= 0)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  result = [a1 _geoMapItem];
  if (result)
  {
    v11 = [result _evCharger];
    result = swift_unknownObjectRelease();
    if (v11)
    {
      v12 = [v11 aggregatedAvailabilityInfo];

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = [v2 initWithMapItemIdentifier:v6 plugs:isa initialAggregatedAvailabilityInfo:v12 virtualGarageService:a2];

      return v14;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

char *CarPlaceCardEVChargingViewModel.__allocating_init(mapItemIdentifier:plugs:initialAggregatedAvailabilityInfo:virtualGarageService:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_sections] = _swiftEmptyArrayStorage;
  v11 = &v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryTitle];
  *v11 = 0;
  v11[1] = 0;
  *&v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription] = 0;
  swift_unknownObjectWeakInit();
  v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_isActive] = 0;
  *&v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_selectedVehicle] = 0;
  *&v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel____lazy_storage___chargerSymbolString] = 1;
  *&v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_mapItemIdentifier] = a1;
  *&v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_plugs] = a2;
  *&v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_initialAggregatedAvailabilityInfo] = a3;
  *&v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_virtualGarageService] = a4;
  v12 = objc_allocWithZone(MUEVChargerAvailabilityDownloader);
  v13 = a4;
  v14 = a1;
  v15 = a3;
  v16 = [v12 initWithMapItemIdentifier:v14];
  *&v10[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_availabilityRefresher] = v16;
  v25.receiver = v10;
  v25.super_class = v5;
  v17 = objc_msgSendSuper2(&v25, "init");
  v18 = *&v17[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_availabilityRefresher];
  v19 = v17;
  [v18 setDelegate:v19];
  v20 = *&v19[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_virtualGarageService];
  if (v20)
  {
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24[4] = sub_10019F5F4;
    v24[5] = v21;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_100113C68;
    v24[3] = &unk_101608058;
    v22 = _Block_copy(v24);

    [v20 virtualGarageGetGarageWithReply:v22];
    _Block_release(v22);
  }

  return v19;
}

char *CarPlaceCardEVChargingViewModel.init(mapItemIdentifier:plugs:initialAggregatedAvailabilityInfo:virtualGarageService:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_sections] = _swiftEmptyArrayStorage;
  v11 = &v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryTitle];
  *v11 = 0;
  v11[1] = 0;
  *&v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_isActive] = 0;
  *&v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_selectedVehicle] = 0;
  *&v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel____lazy_storage___chargerSymbolString] = 1;
  *&v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_mapItemIdentifier] = a1;
  *&v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_plugs] = a2;
  *&v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_initialAggregatedAvailabilityInfo] = a3;
  *&v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_virtualGarageService] = a4;
  v12 = objc_allocWithZone(MUEVChargerAvailabilityDownloader);
  v13 = a4;
  v14 = a1;
  v15 = a3;
  v16 = [v12 initWithMapItemIdentifier:v14];
  *&v5[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_availabilityRefresher] = v16;
  v25.receiver = v5;
  v25.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v25, "init");
  v18 = *&v17[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_availabilityRefresher];
  v19 = v17;
  [v18 setDelegate:v19];
  v20 = *&v19[OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_virtualGarageService];
  if (v20)
  {
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24[4] = sub_1001A1BC4;
    v24[5] = v21;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_100113C68;
    v24[3] = &unk_101608080;
    v22 = _Block_copy(v24);

    [v20 virtualGarageGetGarageWithReply:v22];
    _Block_release(v22);
  }

  return v19;
}

uint64_t sub_10019F2F8(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_100014C84(0, &qword_10190B4F0);
    v12 = static OS_dispatch_queue.main.getter();
    v18 = v6;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = a1;
    aBlock[4] = sub_1001A1B64;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100039C64;
    aBlock[3] = &unk_101608150;
    v15 = _Block_copy(aBlock);
    v16 = a1;
    v17 = v11;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001A1B6C(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v18);
  }

  return result;
}

void *sub_10019F5FC(uint64_t a1, id a2)
{
  v3 = [a2 selectedVehicle];
  v4 = *(a1 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_selectedVehicle);
  *(a1 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_selectedVehicle) = v3;

  sub_10019F730();
  result = sub_10019FBD4();
  if (*(a1 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_isActive) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result evChargingViewModelDidUpdate:a1];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_10019F6B0()
{
  sub_10019F730();
  result = sub_10019FBD4();
  if (*(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_isActive) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result evChargingViewModelDidUpdate:v0];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10019F730()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_initialAggregatedAvailabilityInfo);
  if (!v1)
  {
    v7 = (v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryTitle);
    *v7 = 0;
    v7[1] = 0;

    v6 = *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription);
    *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription) = 0;
LABEL_7:

    return;
  }

  v2 = v1;
  if ([v2 _realTimePlugAvailabilityStatus])
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v3._countAndFlagsBits = 0xD000000000000021;
    v25._object = 0x8000000101221780;
    v4._countAndFlagsBits = 0x6C62616C69617641;
    v4._object = 0xED0000776F4E2065;
    v3._object = 0x8000000101221810;
    v25._countAndFlagsBits = 0xD000000000000039;
    *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryTitle) = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v4, v25);

    v5 = sub_1001A14A0([v2 availableEVChargers], objc_msgSend(v2, "totalEVChargers"));

    v6 = *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription);
    *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription) = v5;
    goto LABEL_7;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v8.super.isa = qword_1019600D8;
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  v26._object = 0x8000000101221780;
  v10._countAndFlagsBits = 0x7372656772616843;
  v9._object = 0x8000000101221840;
  v10._object = 0xE800000000000000;
  v26._countAndFlagsBits = 0xD000000000000039;
  *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryTitle) = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, qword_1019600D8, v10, v26);

  v11._countAndFlagsBits = 0xD00000000000001DLL;
  v27._object = 0x8000000101221880;
  v12._countAndFlagsBits = 0x61746F7420646C25;
  v11._object = 0x8000000101221860;
  v27._countAndFlagsBits = 0xD00000000000003ALL;
  v12._object = 0xE90000000000006CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v8, v12, v27);
  sub_1000CE6B8(&unk_10190D5C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1011E1D30;
  v14 = [v2 totalEVChargers];
  *(v13 + 56) = &type metadata for UInt;
  *(v13 + 64) = &protocol witness table for UInt;
  *(v13 + 32) = v14;
  String.init(format:_:)();

  sub_1000CE6B8(&qword_10191BE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D30;
  *(inited + 32) = NSForegroundColorAttributeName;
  v16 = objc_opt_self();
  v17 = NSForegroundColorAttributeName;
  v18 = [v16 labelColor];
  *(inited + 64) = sub_100014C84(0, &qword_10190CA00);
  *(inited + 40) = v18;
  sub_1000D131C(inited);
  swift_setDeallocating();
  sub_1001A1AFC(inited + 32);
  v19 = objc_allocWithZone(NSAttributedString);
  v20 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1001A1B6C(&qword_10190EEE0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = [v19 initWithString:v20 attributes:isa];

  v23 = *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription);
  *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_summaryDescription) = v22;
}

uint64_t sub_10019FBD4()
{

  v2 = 0;
  v3 = sub_1001A16AC(v1);

  v4 = *(v3 + 2);
  v60 = v0;
  if (v4)
  {
    v5 = sub_100358DD4(v4, 0);
    v0 = sub_100416708(v61, v5 + 8, v4, v3);
    v6 = v3;
    v3 = v61[3];
    v7 = v61[4];
    v8 = v6;
    swift_bridgeObjectRetain_n();
    sub_10005F150();
    if (v0 != v4)
    {
      __break(1u);
LABEL_69:
      swift_once();
LABEL_56:
      v64._object = v4;
      v44._countAndFlagsBits = 0x684320726568744FLL;
      v44._object = 0xEE00737265677261;
      v45._countAndFlagsBits = 0xD000000000000022;
      v45._object = (v7 | 0x8000000000000000);
      v64._countAndFlagsBits = 0xD000000000000039;
      v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, qword_1019600D8, v44, v64);
      countAndFlagsBits = v46._countAndFlagsBits;
      object = v46._object;
      goto LABEL_58;
    }

    v0 = v60;
    v3 = v8;
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v61[0] = v5;
  sub_10019E680(v61);

  v9 = OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_selectedVehicle;
  v10 = *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_selectedVehicle);
  if (!v10)
  {
    v2 = v61[0];
LABEL_52:

    goto LABEL_53;
  }

  v11 = *(v61[0] + 2);
  v59 = v3;
  if (!v11)
  {
    v2 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }

  v58 = OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_selectedVehicle;
  v12 = v61[0] + 32;
  v13 = v10;
  v2 = _swiftEmptyArrayStorage;
  v14 = _swiftEmptyArrayStorage;
  do
  {
    v17 = *v12;
    v12 += 4;
    v16 = v17;
    if (v17 > 4)
    {
      if (v16 > 6)
      {
        if (v16 == 7)
        {
          v18 = 32;
        }

        else
        {
          if (v16 != 8)
          {
            goto LABEL_35;
          }

          v18 = 128;
        }
      }

      else if (v16 == 5)
      {
        v18 = 4;
      }

      else
      {
        if (v16 != 6)
        {
          goto LABEL_35;
        }

        v18 = 16;
      }
    }

    else if (v16 > 2)
    {
      if (v16 == 3)
      {
        if (([v13 supportedConnectors] & 0x40) != 0)
        {
          goto LABEL_31;
        }

        v18 = 256;
      }

      else
      {
        if (v16 != 4)
        {
          goto LABEL_35;
        }

        v18 = 2;
      }
    }

    else if (v16 == 1)
    {
      v18 = 8;
    }

    else
    {
      if (v16 != 2)
      {
        goto LABEL_35;
      }

      v18 = 1;
    }

    if (([v13 supportedConnectors] & v18) != 0)
    {
LABEL_31:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100356F9C(0, *(v14 + 2) + 1, 1, v14);
      }

      v20 = *(v14 + 2);
      v19 = *(v14 + 3);
      v21 = v20 + 1;
      if (v20 < v19 >> 1)
      {
        v15 = v14;
      }

      else
      {
        v15 = sub_100356F9C((v19 > 1), v20 + 1, 1, v14);
        v14 = v15;
      }

      goto LABEL_9;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100356F9C(0, *(v2 + 2) + 1, 1, v2);
    }

    v20 = *(v2 + 2);
    v22 = *(v2 + 3);
    v21 = v20 + 1;
    if (v20 >= v22 >> 1)
    {
      v15 = sub_100356F9C((v22 > 1), v20 + 1, 1, v2);
      v2 = v15;
    }

    else
    {
      v15 = v2;
    }

LABEL_9:
    *(v15 + 2) = v21;
    *&v15[4 * v20 + 32] = v16;
    --v11;
  }

  while (v11);

  v0 = v60;
  v9 = v58;
LABEL_43:

  v23 = *(v0 + v9);
  if (!v23 || !*(v14 + 2))
  {
    goto LABEL_52;
  }

  v24 = qword_101906768;
  v25 = v23;
  if (v24 != -1)
  {
    swift_once();
  }

  v63._object = 0x80000001012217F0;
  v26._countAndFlagsBits = 0x402520726F46;
  v27._countAndFlagsBits = 0xD000000000000020;
  v27._object = 0x80000001012217C0;
  v26._object = 0xE600000000000000;
  v63._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, qword_1019600D8, v26, v63);
  sub_1000CE6B8(&unk_10190D5C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1011E1D30;
  v29 = [v25 displayName];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_1000DA61C();
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  v33 = String.init(format:_:)();
  v35 = v34;

  v3 = v59;
  v0 = v60;
  v36 = sub_1001A029C(v14, v59, v33, v35);
  v38 = v37;
  v40 = v39;

  if (!v40)
  {

LABEL_53:
    v5 = _swiftEmptyArrayStorage;
    if (!*(v2 + 2))
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  v5 = sub_100356E7C(0, 1, 1, _swiftEmptyArrayStorage);
  v42 = v5[2];
  v41 = v5[3];
  if (v42 >= v41 >> 1)
  {
    v5 = sub_100356E7C((v41 > 1), v42 + 1, 1, v5);
  }

  v5[2] = v42 + 1;
  v43 = &v5[3 * v42];
  v43[4] = v36;
  v43[5] = v38;
  v43[6] = v40;
  if (!*(v2 + 2))
  {
LABEL_51:

    goto LABEL_64;
  }

LABEL_54:
  if (v5[2])
  {
    v7 = "bserver";
    v4 = 0x8000000101221780;
    if (qword_101906768 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_69;
  }

  countAndFlagsBits = 0;
  object = 0xE000000000000000;
LABEL_58:
  v49 = sub_1001A029C(v2, v3, countAndFlagsBits, object);
  v51 = v50;
  v53 = v52;

  if (v53)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100356E7C(0, v5[2] + 1, 1, v5);
    }

    v55 = v5[2];
    v54 = v5[3];
    if (v55 >= v54 >> 1)
    {
      v5 = sub_100356E7C((v54 > 1), v55 + 1, 1, v5);
    }

    v5[2] = v55 + 1;
    v56 = &v5[3 * v55];
    v56[4] = v49;
    v56[5] = v51;
    v56[6] = v53;
  }

LABEL_64:
  *(v0 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_sections) = v5;
}

uint64_t sub_1001A029C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000CE6B8(&unk_10190EEC0);
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v11 - 8);
  v48 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString();
  __chkstk_darwin(v13);
  v51 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (!v17)
  {
    return 0;
  }

  v42 = a3;
  v43 = a4;
  v18 = (a1 + 32);
  v44 = (v15 + 8);
  v45 = (v15 + 16);
  v19 = _swiftEmptyArrayStorage;
  v46 = v14;
  v47 = v10;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_4;
    }

    v20 = sub_10029728C(*v18);
    if ((v21 & 1) == 0)
    {
      goto LABEL_4;
    }

    v22 = *(*(a2 + 56) + 8 * v20);
    if (v22 >> 62)
    {
      break;
    }

    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_4:
    ++v18;
    if (!--v17)
    {

      return v42;
    }
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_4;
  }

LABEL_9:

  result = sub_1001A1904(v23);
  v25 = result;
  v27 = v26;
  v29 = v28;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v22 + 32);
LABEL_12:
    v31 = v30;

    v32 = [v31 connectorTypeDisplayText];

    if (v32)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    if (v29)
    {
      v33 = sub_1001A0690(v27);
    }

    else
    {
      v33 = sub_1001A14A0(v25, v27);
    }

    v34 = v33;
    v36 = v46;
    v35 = v47;
    v37 = *(v50 + 48);
    (*v45)(v47, v51, v46);
    *(v35 + v37) = v34;
    v38 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100356C8C(0, v19[2] + 1, 1, v19);
    }

    v40 = v19[2];
    v39 = v19[3];
    if (v40 >= v39 >> 1)
    {
      v19 = sub_100356C8C(v39 > 1, v40 + 1, 1, v19);
    }

    (*v44)(v51, v36);
    v19[2] = v40 + 1;
    sub_1001A1A8C(v35, v19 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v40);
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

id sub_1001A0690(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  __chkstk_darwin(v2 - 8);
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:a1];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:0];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [objc_allocWithZone(NSAttributedString) initWithString:v5];

  v7 = sub_10019E990();
  if (v7)
  {
    v8 = v7;
    sub_1000CE6B8(&qword_101908400);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1011E47C0;
    *(v9 + 32) = v6;
    sub_100014C84(0, &qword_10190EED0);
    v10 = v6;
    AttributedString.init(stringLiteral:)();
    *(v9 + 40) = NSAttributedString.init(_:)();
    *(v9 + 48) = v8;
    v11 = objc_opt_self();
    v12 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [v11 buildAttributedDisplayStringForComponents:isa];

    v15 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v14];
    sub_1000CE6B8(&qword_10191BE70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E1D30;
    *(inited + 32) = NSForegroundColorAttributeName;
    v17 = objc_opt_self();
    v18 = NSForegroundColorAttributeName;
    v19 = [v17 systemGrayColor];
    *(inited + 64) = sub_100014C84(0, &qword_10190CA00);
    *(inited + 40) = v19;
    sub_1000D131C(inited);
    swift_setDeallocating();
    sub_1001A1AFC(inited + 32);
    type metadata accessor for Key(0);
    sub_1001A1B6C(&qword_10190EEE0, type metadata accessor for Key);
    v20 = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = v15;
    [v6 addAttributes:v20 range:{0, objc_msgSend(v6, "length")}];
  }

  return v6;
}

id CuratedCollectionItemLibraryCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *CarPlaceCardEVChargingViewModel.evChargerAvailabilityDownloader(_:didDownloadAvailabilityWith:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_plugs) = a2;

  sub_10019F730();
  result = sub_10019FBD4();
  if (*(v2 + OBJC_IVAR____TtC4Maps31CarPlaceCardEVChargingViewModel_isActive) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result evChargingViewModelDidUpdate:v2];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001A0CC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001A0D10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001A0D60(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10056D550(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1001A12AC((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_100097874(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_100097874((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_1001A12AC((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_1001A12AC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
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

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

id sub_1001A14A0(uint64_t a1, uint64_t a2)
{
  result = objc_opt_self();
  if ((a2 | a1) < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = [result localizedStringForAvailableChargers:a1 outOfTotal:a2 radiowavesSymbolScale:2];
    v6 = objc_opt_self();
    v7 = &selRef_systemGrayColor;
    if (a1)
    {
      v7 = &selRef_systemGreenColor;
    }

    v8 = [v6 *v7];
    v9 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v5];
    sub_1000CE6B8(&qword_10191BE70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E1D30;
    *(inited + 32) = NSForegroundColorAttributeName;
    *(inited + 64) = sub_100014C84(0, &qword_10190CA00);
    *(inited + 40) = v8;
    v11 = NSForegroundColorAttributeName;
    v12 = v8;
    sub_1000D131C(inited);
    swift_setDeallocating();
    sub_1001A1AFC(inited + 32);
    type metadata accessor for Key(0);
    sub_1001A1B6C(&qword_10190EEE0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = v9;
    [v14 addAttributes:isa range:{0, objc_msgSend(v14, "length")}];

    return v14;
  }

  return result;
}

void *sub_1001A16AC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_23:
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = [v5 connectorType];
    v9 = sub_10029728C(v8);
    v11 = _swiftEmptyDictionarySingleton[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_21;
    }

    v15 = v10;
    if (_swiftEmptyDictionarySingleton[3] < v14)
    {
      sub_1001274D8(v14, 1);
      v9 = sub_10029728C(v8);
      if ((v15 & 1) != (v16 & 1))
      {
        break;
      }
    }

    if (v15)
    {
      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v9);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v17 = v9;
      sub_1000CE6B8(&qword_101908400);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1011E47B0;
      *(v18 + 32) = v6;
      _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
      *(_swiftEmptyDictionarySingleton[6] + 4 * v17) = v8;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v17) = v18;
      v19 = _swiftEmptyDictionarySingleton[2];
      v13 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v13)
      {
        goto LABEL_22;
      }

      _swiftEmptyDictionarySingleton[2] = v20;
    }

    if (v7 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  type metadata accessor for GEOEVChargerPlugConnectorType(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001A1904(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_30:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  do
  {
    v6 = v4;
    if (v3 == v4)
    {
      break;
    }

    if (v5)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_29;
      }

      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v9 = [v7 realtimeStatus];

    v4 = v6 + 1;
  }

  while (!v9);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  while (v3 != v10)
  {
    if (v5)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v2 + 16))
      {
        goto LABEL_25;
      }

      v13 = *(a1 + 8 * v10 + 32);
    }

    v14 = v13;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v15 = [v13 availableNumberOfChargers];
    v16 = __CFADD__(v12, v15);
    v12 += v15;
    if (v16)
    {
      goto LABEL_26;
    }

    v17 = [v14 totalNumberOfChargers];

    ++v10;
    v16 = __CFADD__(v11, v17);
    v11 += v17;
    if (v16)
    {
      goto LABEL_27;
    }
  }

  return v12;
}

uint64_t sub_1001A1A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190EEC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A1AFC(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101908020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A1B6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A1BC8()
{

  sub_1000588AC(v0[4]);
  sub_1000588AC(v0[6]);
  sub_1000588AC(v0[8]);
  sub_1000588AC(v0[10]);
  sub_1000588AC(v0[12]);

  return swift_deallocClassInstance();
}

uint64_t sub_1001A1CFC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001A1D7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7B)
  {
    v7 = 123;
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

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if (v5 > 0x7B)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
      v16 = v15 ^ 0x7F;
      v17 = 128 - v15;
      if (v16 >= 0x7B)
      {
        return 0;
      }

      else
      {
        return v17;
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

void sub_1001A1F1C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7B)
  {
    v8 = 123;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
  if (v7 > 0x7B)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else if (a2 > 0x7B)
  {
    *a1 = a2 - 124;
  }

  else
  {
    v19 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    *a1 = (v19 | (v19 << 57)) & 0xF000000000000007;
  }
}

uint64_t sub_1001A21B8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1001A2388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1001A2480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1001A2578()
{
  static Color.white.getter();
  v0 = Color.opacity(_:)();

  qword_10195FBA8 = v0;
  return result;
}

uint64_t sub_1001A25C0()
{
  result = static Color.secondary.getter();
  qword_10195FBB0 = result;
  return result;
}

uint64_t sub_1001A25E0@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1000CE6B8(&qword_10190F380);
  __chkstk_darwin(v2 - 8);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v38 - v5;
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    static Published.subscript.getter();

    if ((v41 & 1) == 0 || (v13 = *(_s10TitleLabelVMa(0) + 24), sub_1000D2DFC(v1 + v13, v6, &qword_10190F380), v14 = *(v8 + 48), v15 = v14(v6, 1, v7), sub_100024F64(v6, &qword_10190F380), v15 == 1))
    {
      v16 = _s10TitleLabelVMa(0);
      (*(v8 + 16))(v10, v1 + *(v16 + 20), v7);
LABEL_7:
      v19 = Text.init(_:)();
      v21 = v20;
      v23 = v22;
      static Font.headline.getter();
      v24 = Text.font(_:)();
      v26 = v25;
      v28 = v27;

      sub_1000F0A40(v19, v21, v23 & 1);

      static Color.primary.getter();
      v29 = Text.foregroundColor(_:)();
      v31 = v30;
      v33 = v32;
      v35 = v34;

      sub_1000F0A40(v24, v26, v28 & 1);

      KeyPath = swift_getKeyPath();
      v41 = v29;
      v42 = v31;
      v33 &= 1u;
      v43 = v33;
      v44 = v35;
      v45 = KeyPath;
      v46 = 1;
      v47 = 0;
      sub_1000CE6B8(&unk_10190FE90);
      sub_10014277C();
      View.accessibility(identifier:)();
      sub_1000F0A40(v29, v31, v33);
    }

    v17 = v1 + v13;
    v18 = v39;
    sub_1000D2DFC(v17, v39, &qword_10190F380);
    if (v14(v18, 1, v7) != 1)
    {
      (*(v8 + 32))(v10, v18, v7);
      goto LABEL_7;
    }

    __break(1u);
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001A2A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10190A1A0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = _s5LabelVMa(0);
  sub_1000D2DFC(v1 + *(v10 + 48), v9, &qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1001A2C14@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_1000CE6B8(&qword_10190FEB0);
  __chkstk_darwin(v2);
  v4 = &v51 - v3;
  v65 = sub_1000CE6B8(&qword_10190FEB8);
  __chkstk_darwin(v65);
  v6 = &v51 - v5;
  v54 = sub_1000CE6B8(&qword_10190FEC0);
  __chkstk_darwin(v54);
  v56 = &v51 - v7;
  v8 = sub_1000CE6B8(&qword_10190FEC8);
  __chkstk_darwin(v8);
  v57 = &v51 - v9;
  v55 = sub_1000CE6B8(&qword_10190FED0);
  __chkstk_darwin(v55);
  v53 = &v51 - v10;
  v11 = type metadata accessor for AttributedString();
  v12 = __chkstk_darwin(v11);
  (*(v14 + 16))(&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v12);
  v15 = Text.init(_:)();
  v62 = v16;
  v63 = v15;
  v18 = v17;
  v61 = v19;
  v60 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v20 = v18 & 1;
  v110 = v20;
  v21 = _s5LabelVMa(0);
  v22 = *(v21 + 44);
  v64 = v1;
  v23 = *(v1 + v22);
  if (v23)
  {
    v24 = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v23;
    static Published.subscript.getter();

    v69 = v2;
    v66 = v8;
    v67 = v6;
    v52 = v4;
    v58 = v20;
    if (v83)
    {
      if (qword_101906598 != -1)
      {
        swift_once();
      }

      v26 = &qword_10195FBA8;
    }

    else
    {
      if (qword_1019065A0 != -1)
      {
        swift_once();
      }

      v26 = &qword_10195FBB0;
    }

    v27 = *v26;

    v28 = swift_getKeyPath();
    v29 = v24;
    v30 = v24[10];
    v31 = v64;
    v32 = (v64 + v30);
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = swift_getKeyPath();
    v111 = v34;
    *&v105 = v63;
    *(&v105 + 1) = v62;
    LOBYTE(v106) = v58;
    *(&v106 + 1) = v61;
    LOWORD(v107) = 256;
    *(&v107 + 1) = KeyPath;
    *&v108 = v60;
    *(&v108 + 1) = v28;
    *v109 = v27;
    *&v109[8] = v35;
    *&v109[16] = v33;
    v109[24] = v34;
    if (*(v31 + v29[5] + 8) || *(v31 + v29[8]))
    {
      v102 = v107;
      v103 = v108;
      v104[0] = *v109;
      *(v104 + 9) = *&v109[9];
      v100 = v105;
      v101 = v106;
      sub_1000D2DFC(&v105, &v83, &qword_10190FED8);
      v63 = static VerticalAlignment.center.getter();
      LOBYTE(v86) = 0;
      sub_1001A390C(v31, &v100, &v83);
      v80 = v84[6];
      v81[0] = v84[7];
      v81[1] = v84[8];
      *(&v81[1] + 9) = *(&v84[8] + 9);
      v77 = v84[3];
      v78 = v84[4];
      v79 = v84[5];
      v73 = v83;
      v74 = v84[0];
      v75 = v84[1];
      v76 = v84[2];
      v82[7] = v84[6];
      v82[8] = v84[7];
      v82[9] = v84[8];
      *(&v82[9] + 9) = *(&v84[8] + 9);
      v82[4] = v84[3];
      v82[5] = v84[4];
      v82[6] = v84[5];
      v82[0] = v83;
      v82[1] = v84[0];
      v82[2] = v84[1];
      v82[3] = v84[2];
      sub_1000D2DFC(&v73, &v70, &qword_10190FF68);
      sub_100024F64(v82, &qword_10190FF68);
      *(&v72[7] + 7) = v80;
      *(&v72[8] + 7) = v81[0];
      *(&v72[9] + 7) = v81[1];
      v72[10] = *(&v81[1] + 9);
      *(&v72[3] + 7) = v76;
      *(&v72[4] + 7) = v77;
      *(&v72[5] + 7) = v78;
      *(&v72[6] + 7) = v79;
      *(v72 + 7) = v73;
      *(&v72[1] + 7) = v74;
      *(&v72[2] + 7) = v75;
      v94 = v102;
      v95 = v103;
      v96[0] = v104[0];
      *(v96 + 9) = *(v104 + 9);
      v92 = v100;
      v93 = v101;
      sub_100024F64(&v92, &qword_10190FED8);
      *&v71[113] = v72[7];
      *&v71[129] = v72[8];
      *&v71[145] = v72[9];
      *&v71[161] = v72[10];
      *&v71[49] = v72[3];
      *&v71[65] = v72[4];
      *&v71[81] = v72[5];
      *&v71[97] = v72[6];
      *&v71[1] = v72[0];
      *&v71[17] = v72[1];
      *&v70 = v63;
      *(&v70 + 1) = 0x4010000000000000;
      v71[0] = v86;
      *&v71[33] = v72[2];
      sub_1001A4060();
      sub_1000CE6B8(&qword_10190FF40);
      sub_1000414C8(&qword_10190FF38, &qword_10190FF40);
      v36 = v53;
      View.accessibility(identifier:)();

      v84[9] = *&v71[144];
      v84[10] = *&v71[160];
      v85 = v71[176];
      v84[5] = *&v71[80];
      v84[6] = *&v71[96];
      v84[7] = *&v71[112];
      v84[8] = *&v71[128];
      v84[1] = *&v71[16];
      v84[2] = *&v71[32];
      v84[3] = *&v71[48];
      v84[4] = *&v71[64];
      v83 = v70;
      v84[0] = *v71;
      sub_100024F64(&v83, &qword_10190FF40);
      sub_1000D2DFC(v36, v56, &qword_10190FED0);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190FF50);
      sub_1001C8020();
      sub_1000414C8(&qword_10190FF48, &qword_10190FF50);
      v37 = v57;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v37, v67, &qword_10190FEC8);
      swift_storeEnumTagMultiPayload();
      sub_1001C7F68();
      sub_1001C8108();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(&v105, &qword_10190FED8);
      sub_100024F64(v37, &qword_10190FEC8);
      v38 = v36;
      v39 = &qword_10190FED0;
    }

    else
    {
      v41 = *(v31 + v29[9]);
      if (v41)
      {
        v88 = v107;
        v89 = v108;
        v90[0] = *v109;
        *(v90 + 9) = *&v109[9];
        v86 = v105;
        v87 = v106;
        sub_1000D2DFC(&v105, &v83, &qword_10190FED8);

        v42 = static VerticalAlignment.center.getter();
        v91 = 0;
        sub_1001A4130(v41, &v86, &v83);
        v97 = v84[5];
        v98 = v84[6];
        v99[0] = v84[7];
        *(v99 + 9) = *(&v84[7] + 9);
        v94 = v84[1];
        v95 = v84[2];
        v96[0] = v84[3];
        v96[1] = v84[4];
        v92 = v83;
        v93 = v84[0];
        v79 = v84[5];
        v80 = v84[6];
        v81[0] = v84[7];
        *(v81 + 9) = *(&v84[7] + 9);
        v75 = v84[1];
        v76 = v84[2];
        v77 = v84[3];
        v78 = v84[4];
        v73 = v83;
        v74 = v84[0];
        sub_1000D2DFC(&v92, &v70, &qword_10190FF60);
        sub_100024F64(&v73, &qword_10190FF60);
        *(&v82[6] + 7) = v97;
        *(&v82[7] + 7) = v98;
        *(&v82[8] + 7) = v99[0];
        v82[9] = *(v99 + 9);
        *(&v82[2] + 7) = v94;
        *(&v82[3] + 7) = v95;
        *(&v82[4] + 7) = v96[0];
        *(&v82[5] + 7) = v96[1];
        *(v82 + 7) = v92;
        *(&v82[1] + 7) = v93;
        v102 = v88;
        v103 = v89;
        v104[0] = v90[0];
        *(v104 + 9) = *(v90 + 9);
        v100 = v86;
        v101 = v87;
        sub_100024F64(&v100, &qword_10190FED8);
        *&v83 = v42;
        *(&v83 + 1) = 0x4010000000000000;
        LOBYTE(v84[0]) = v91;
        *(&v84[6] + 1) = v82[6];
        *(&v84[7] + 1) = v82[7];
        *(&v84[8] + 1) = v82[8];
        *(&v84[9] + 1) = v82[9];
        *(&v84[2] + 1) = v82[2];
        *(&v84[3] + 1) = v82[3];
        *(&v84[4] + 1) = v82[4];
        *(&v84[5] + 1) = v82[5];
        *(v84 + 1) = v82[0];
        *(&v84[1] + 1) = v82[1];
        v43 = v84[8];
        v44 = v56;
        *(v56 + 128) = v84[7];
        *(v44 + 144) = v43;
        *(v44 + 160) = v84[9];
        *(v44 + 176) = v84[10];
        v45 = v84[4];
        *(v44 + 64) = v84[3];
        *(v44 + 80) = v45;
        v46 = v84[6];
        *(v44 + 96) = v84[5];
        *(v44 + 112) = v46;
        v47 = v84[0];
        *v44 = v83;
        *(v44 + 16) = v47;
        v48 = v84[2];
        *(v44 + 32) = v84[1];
        *(v44 + 48) = v48;
        swift_storeEnumTagMultiPayload();
        sub_1000D2DFC(&v83, &v70, &qword_10190FF50);
        sub_1000CE6B8(&qword_10190FF50);
        sub_1001C8020();
        sub_1000414C8(&qword_10190FF48, &qword_10190FF50);
        v49 = v57;
        _ConditionalContent<>.init(storage:)();
        sub_1000D2DFC(v49, v67, &qword_10190FEC8);
        swift_storeEnumTagMultiPayload();
        sub_1001C7F68();
        sub_1001C8108();
        _ConditionalContent<>.init(storage:)();

        sub_100024F64(&v83, &qword_10190FF50);
        sub_100024F64(&v105, &qword_10190FED8);
        v38 = v49;
        v39 = &qword_10190FEC8;
      }

      else
      {
        v84[1] = v107;
        v84[2] = v108;
        v84[3] = *v109;
        *(&v84[3] + 9) = *&v109[9];
        v83 = v105;
        v84[0] = v106;
        sub_1001A4060();
        sub_1000CE6B8(&qword_10190FED8);
        sub_1001C7CBC();
        v50 = v52;
        View.accessibility(identifier:)();

        sub_1000D2DFC(v50, v67, &qword_10190FEB0);
        swift_storeEnumTagMultiPayload();
        sub_1001C7F68();
        sub_1001C8108();
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(&v105, &qword_10190FED8);
        v38 = v50;
        v39 = &qword_10190FEB0;
      }
    }

    return sub_100024F64(v38, v39);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A390C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = _s5LabelVMa(0);
  if (*(a1 + *(v6 + 32)))
  {
    type metadata accessor for PlaceSummaryImageViewModel(0);
    sub_1001C3C48(&qword_10190F480, type metadata accessor for PlaceSummaryImageViewModel);
    swift_retain_n();
    v7 = ObservedObject.init(wrappedValue:)();
    v9 = v8;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v58 = v7;
    *(&v58 + 1) = v9;
    *&v59 = 0;
    v67 = v60;
    v68 = v61;
    *&v69[0] = *&v62[0];
    v65 = v58;
    v66 = v59;
    LOBYTE(v46[0]) = 0;
    BYTE8(v69[0]) = 0;
    sub_1000D2DFC(&v58, &v70, &qword_10190FF78);
    sub_1000CE6B8(&qword_10190FF78);
    sub_1000CE6B8(&qword_10190FF80);
    sub_1001C81C4();
    sub_1001C827C();
    _ConditionalContent<>.init(storage:)();

    sub_100024F64(&v58, &qword_10190FF78);
LABEL_10:
    v19 = v70;
    v21 = v71;
    v22 = v72;
    v23 = v73;
    v18 = *&v74[0];
    v20 = BYTE8(v74[0]);
    goto LABEL_11;
  }

  v10 = v6;
  if (!*(a1 + *(v6 + 20) + 8))
  {
    v18 = 0;
    v19 = 0uLL;
    v20 = -1;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
LABEL_11:
    v42 = v19;
    v43 = v21;
    v44 = v22;
    v45 = v23;
    v25 = a2[1];
    v26 = a2[3];
    v60 = a2[2];
    v61 = v26;
    v27 = a2[1];
    v58 = *a2;
    v59 = v27;
    v70 = v58;
    v71 = v27;
    v29 = a2[3];
    v62[0] = a2[4];
    v28 = v62[0];
    v72 = v60;
    v73 = v26;
    *(v62 + 9) = *(a2 + 73);
    v74[0] = v28;
    *(v74 + 9) = *(v62 + 9);
    v63[0] = v19;
    v63[1] = v21;
    v63[2] = v22;
    *v64 = v23;
    *&v64[16] = v18;
    v64[24] = v20;
    v51 = v22;
    *v52 = v23;
    *&v52[9] = *&v64[9];
    v49 = v19;
    v50 = v21;
    v30 = a2[1];
    v65 = *a2;
    v66 = v30;
    *(v69 + 9) = *(a2 + 73);
    v31 = a2[4];
    v32 = a2[2];
    v68 = a2[3];
    v69[0] = v31;
    v67 = v32;
    v53 = v58;
    v54 = v25;
    v33 = a2[4];
    *(v57 + 9) = *(a2 + 73);
    v56 = v29;
    v57[0] = v33;
    v55 = v60;
    *a3 = v19;
    a3[1] = v21;
    v34 = v51;
    v35 = *v52;
    v36 = v53;
    a3[4] = *&v52[16];
    a3[5] = v36;
    a3[2] = v34;
    a3[3] = v35;
    v37 = v54;
    v38 = v55;
    v39 = v56;
    v40 = v57[0];
    *(a3 + 153) = *(v57 + 9);
    a3[8] = v39;
    a3[9] = v40;
    a3[6] = v37;
    a3[7] = v38;
    sub_1000D2DFC(&v58, v46, &qword_10190FED8);
    sub_1000D2DFC(v63, v46, &qword_10190FF70);
    sub_1000D2DFC(&v65, v46, &qword_10190FED8);
    sub_100024F64(&v70, &qword_10190FED8);
    v46[0] = v42;
    v46[1] = v43;
    v46[2] = v44;
    v46[3] = v45;
    v47 = v18;
    v48 = v20;
    return sub_100024F64(v46, &qword_10190FF70);
  }

  v11 = Image.init(_internalSystemName:)();
  v12 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v14 = *(a1 + v10[11]);
  if (v14)
  {
    v15 = KeyPath;
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v14;
    static Published.subscript.getter();

    if (v70)
    {
      v17 = static Color.white.getter();
    }

    else
    {
      v17 = sub_1001A3EF0(*(a1 + v10[6]), *(a1 + v10[7]));
    }

    v24 = v17;
    LOBYTE(v58) = 1;
    *&v65 = v11;
    *(&v65 + 1) = v15;
    *&v66 = v12;
    *(&v66 + 1) = swift_getKeyPath();
    *&v67 = v24;
    BYTE8(v69[0]) = 1;
    sub_1000CE6B8(&qword_10190FF78);
    sub_1000CE6B8(&qword_10190FF80);
    sub_1001C81C4();
    sub_1001C827C();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_10;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001A3DF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  type metadata accessor for PlaceSummaryImageViewModel(0);
  sub_1001C3C48(&qword_10190F480, type metadata accessor for PlaceSummaryImageViewModel);
  *a3 = ObservedObject.init(wrappedValue:)();
  *(a3 + 8) = v8;
  *(a3 + 16) = a4;
  v9 = _s9ImageViewVMa();
  v10 = *(*(a2 - 8) + 32);
  v11 = a3 + *(v9 + 40);

  return v10(v11, a1, a2);
}

uint64_t sub_1001A3EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1001A2A0C(&v14 - v9);
  (*(v5 + 104))(v7, enum case for ColorScheme.dark(_:), v4);
  v11 = static ColorScheme.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if ((v11 & 1) == 0 || !a2)
  {
    a2 = a1;
    if (!a1)
    {
      a2 = static Color.secondary.getter();
    }
  }

  return a2;
}

unint64_t sub_1001A4060()
{
  v1 = _s5LabelVMa(0);
  v2 = (v0 + *(v1 + 20));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    _StringGuts.grow(_:)(28);

    v5._countAndFlagsBits = v4;
    v5._object = v3;
    String.append(_:)(v5);
    return 0xD00000000000001ALL;
  }

  else if (*(v0 + *(v1 + 32)))
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1001A4130@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X2>, _OWORD *a3@<X8>)
{
  type metadata accessor for PlaceSummaryStackedImageViewModel(0);
  sub_1001C3C48(&qword_10190FFB8, type metadata accessor for PlaceSummaryStackedImageViewModel);

  v6 = ObservedObject.init(wrappedValue:)();
  v8 = v7;
  v9 = *(a1 + OBJC_IVAR____TtC4Maps33PlaceSummaryStackedImageViewModel_imageSpecs);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v11 = a2[1];
    v12 = a2[3];
    v39 = a2[2];
    v40 = v12;
    v13 = a2[3];
    v41[0] = a2[4];
    *(v41 + 9) = *(a2 + 73);
    v14 = a2[1];
    v38[0] = *a2;
    v38[1] = v14;
    v15 = a2[1];
    v48[0] = *a2;
    v48[1] = v15;
    *(v49 + 9) = *(a2 + 73);
    v16 = a2[4];
    v48[3] = a2[3];
    v49[0] = v16;
    v48[2] = a2[2];
    *&v42 = v6;
    *(&v42 + 1) = v8;
    *&v43 = v50;
    BYTE8(v43) = v51;
    *&v44 = v52;
    BYTE8(v44) = v53;
    v45 = v54;
    v28[6] = v42;
    v28[7] = v43;
    v29 = v44;
    v30 = v54;
    v17 = a2[1];
    v46[0] = *a2;
    v46[1] = v17;
    *(v47 + 9) = *(a2 + 73);
    v18 = a2[4];
    v19 = a2[2];
    v46[3] = a2[3];
    v47[0] = v18;
    v46[2] = v19;
    v37 = v51;
    v36 = v53;
    v31 = v48[0];
    v32 = v11;
    v20 = a2[4];
    *(v35 + 9) = *(a2 + 73);
    v34 = v13;
    v35[0] = v20;
    v33 = v39;
    v21 = v43;
    *a3 = v42;
    a3[1] = v21;
    v22 = v29;
    v23 = v30;
    v24 = v32;
    a3[4] = v31;
    a3[5] = v24;
    a3[2] = v22;
    a3[3] = v23;
    v25 = v33;
    v26 = v34;
    v27 = v35[0];
    *(a3 + 137) = *(v35 + 9);
    a3[7] = v26;
    a3[8] = v27;
    a3[6] = v25;
    sub_1000D2DFC(v38, v28, &qword_10190FED8);
    sub_1000D2DFC(&v42, v28, &qword_10190FFC0);
    sub_1000D2DFC(v46, v28, &qword_10190FED8);
    sub_100024F64(v48, &qword_10190FED8);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_8;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_10;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_3:
  if ((result - 0x800000000000000) >> 60 == 15)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1001A4404@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = _s4LineVMa(0);
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  __chkstk_darwin(v2 - 8);
  v26 = sub_1000CE6B8(&qword_10190F0C0);
  __chkstk_darwin(v26);
  v5 = &v23 - v4;
  v24 = sub_1000CE6B8(&qword_10190F0C8);
  __chkstk_darwin(v24);
  v7 = &v23 - v6;
  v25 = sub_1000CE6B8(&qword_10190F0D0);
  __chkstk_darwin(v25);
  v9 = &v23 - v8;
  v10 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  v17 = sub_1001A4944(v1);
  v18 = v17;
  if (v17[2] == 1)
  {
    sub_1001C48C0(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v13, type metadata accessor for PlaceSummaryViewModelUnit);

    sub_1001C4928(v13, v16, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_1001A4C34(v16, v9);
    sub_1000D2DFC(v9, v7, &qword_10190F0D0);
    swift_storeEnumTagMultiPayload();
    sub_1001C3850();
    sub_1001C4808();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v9, &qword_10190F0D0);
    return sub_1001C4CC4(v16, type metadata accessor for PlaceSummaryViewModelUnit);
  }

  else
  {
    *v5 = static VerticalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 0;
    sub_1000CE6B8(&qword_10190F0D8);
    v28 = v18;
    sub_1001C48C0(v1, &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), _s4LineVMa);
    v20 = (*(v23 + 80) + 16) & ~*(v23 + 80);
    v21 = swift_allocObject();
    sub_1001C4928(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, _s4LineVMa);
    sub_1000CE6B8(&qword_10190F0E0);
    type metadata accessor for UUID();
    sub_1000414C8(&qword_10190F0E8, &qword_10190F0E0);
    sub_1001C3850();
    sub_1001C3C48(&qword_10190F298, type metadata accessor for PlaceSummaryViewModelUnit);
    ForEach<>.init(_:content:)();
    v22 = &v5[*(v26 + 36)];
    *v22 = 0xD000000000000010;
    *(v22 + 1) = 0x8000000101221970;
    v22[16] = 9;
    sub_1000D2DFC(v5, v7, &qword_10190F0C0);
    swift_storeEnumTagMultiPayload();
    sub_1001C4808();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v5, &qword_10190F0C0);
  }
}

void *sub_1001A4944(uint64_t a1)
{
  v28 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v27 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v10 = *(v27 + 20);
  v29 = a1;
  v11 = *(a1 + v10);
  v12 = *(v11 + 16);
  if (!v12)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = v11 + v13;
  v15 = *(v2 + 72);
  v16 = _swiftEmptyArrayStorage;
  do
  {
    sub_1001C48C0(v14, v9, type metadata accessor for PlaceSummaryViewModelUnit);
    sub_1001C48C0(v9, v6, type metadata accessor for PlaceSummaryViewModelUnit);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100356A5C(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100356A5C(v17 > 1, v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    sub_1001C4928(v6, v16 + v13 + v18 * v15, type metadata accessor for PlaceSummaryViewModelUnit);
    v19 = sub_1003CF358(v9, v11);
    v21 = v20;
    sub_1001C4CC4(v9, type metadata accessor for PlaceSummaryViewModelUnit);
    if ((v21 & 1) == 0 && v19 < *(v11 + 16) - 1)
    {
      v22 = v30;
      v23 = *(v29 + *(v27 + 28));
      UUID.init()();
      *(v22 + *(type metadata accessor for PlaceSummaryViewModelUnit.Delimiter(0) + 20)) = (v23 & 1) == 0;
      swift_storeEnumTagMultiPayload();
      v25 = v16[2];
      v24 = v16[3];
      if (v25 >= v24 >> 1)
      {
        v16 = sub_100356A5C(v24 > 1, v25 + 1, 1, v16);
      }

      v16[2] = v25 + 1;
      sub_1001C4928(v30, v16 + v13 + v25 * v15, type metadata accessor for PlaceSummaryViewModelUnit);
    }

    v14 += v15;
    --v12;
  }

  while (v12);
  return v16;
}

uint64_t sub_1001A4C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v428 = a1;
  v432 = a2;
  v357 = type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel(0);
  __chkstk_darwin(v357);
  v364 = &v333 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v393 = _s28RealTimeAvailableChargerViewVMa(0);
  __chkstk_darwin(v393);
  v363 = (&v333 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v409 = sub_1000CE6B8(&qword_10190F2C0);
  __chkstk_darwin(v409);
  v411 = (&v333 - v4);
  v390 = sub_1000CE6B8(&qword_10190F2C8);
  __chkstk_darwin(v390);
  v392 = &v333 - v5;
  v410 = sub_1000CE6B8(&qword_10190F240);
  __chkstk_darwin(v410);
  v394 = &v333 - v6;
  v419 = sub_1000CE6B8(&qword_10190F230);
  __chkstk_darwin(v419);
  v412 = &v333 - v7;
  v391 = _s5HoursVMa(0);
  __chkstk_darwin(v391);
  v362 = &v333 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = type metadata accessor for PlaceSummaryViewModelUnit.Hours(0);
  __chkstk_darwin(v354);
  v361 = &v333 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = _s9DelimiterVMa(0);
  __chkstk_darwin(v388);
  v360 = (&v333 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v350 = type metadata accessor for PlaceSummaryViewModelUnit.Delimiter(0);
  __chkstk_darwin(v350);
  v359 = &v333 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = sub_1000CE6B8(&qword_10190F2D0);
  __chkstk_darwin(v384);
  v387 = &v333 - v12;
  v407 = sub_1000CE6B8(&qword_10190F210);
  __chkstk_darwin(v407);
  v389 = &v333 - v13;
  v386 = _s13TappableEntryVMa(0);
  __chkstk_darwin(v386);
  v356 = &v333 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
  __chkstk_darwin(v15 - 8);
  v355 = &v333 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v414 = sub_1000CE6B8(&qword_10190F2D8);
  __chkstk_darwin(v414);
  v418 = &v333 - v17;
  v402 = sub_1000CE6B8(&qword_10190F2E0);
  __chkstk_darwin(v402);
  v403 = (&v333 - v18);
  v416 = sub_1000CE6B8(&qword_10190F1E0);
  __chkstk_darwin(v416);
  v408 = &v333 - v19;
  v426 = sub_1000CE6B8(&qword_10190F1D0);
  __chkstk_darwin(v426);
  v421 = &v333 - v20;
  v343 = type metadata accessor for PlaceSummaryViewModelUnit.TransitShields(0);
  __chkstk_darwin(v343);
  v352 = &v333 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations(0);
  __chkstk_darwin(v340);
  v383 = &v333 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = sub_1000CE6B8(&qword_10190F2E8);
  __chkstk_darwin(v380);
  v382 = (&v333 - v23);
  v406 = sub_1000CE6B8(&qword_10190F1B0);
  __chkstk_darwin(v406);
  v385 = &v333 - v24;
  v381 = _s17ThirdPartyRatingsVMa(0);
  __chkstk_darwin(v381);
  v353 = (&v333 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
  __chkstk_darwin(v26 - 8);
  v351 = &v333 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  PartyRatingsVMa = _s17FirstPartyRatingsVMa(0);
  __chkstk_darwin(PartyRatingsVMa);
  v349 = (&v333 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  PartyRatings = type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings(0);
  __chkstk_darwin(PartyRatings);
  v348 = &v333 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v398 = sub_1000CE6B8(&qword_10190F2F0);
  __chkstk_darwin(v398);
  v400 = &v333 - v30;
  v372 = sub_1000CE6B8(&qword_10190F2F8);
  __chkstk_darwin(v372);
  v375 = &v333 - v31;
  v399 = sub_1000CE6B8(&qword_10190F190);
  __chkstk_darwin(v399);
  v378 = &v333 - v32;
  v422 = sub_1000CE6B8(&qword_10190F180);
  __chkstk_darwin(v422);
  v405 = &v333 - v33;
  v373 = _s18UserGeneratedGuideVMa(0);
  __chkstk_darwin(v373);
  v347 = &v333 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
  __chkstk_darwin(v35 - 8);
  v345 = &v333 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = _s18SingleCuratedGuideVMa(0);
  __chkstk_darwin(v377);
  v346 = &v333 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  __chkstk_darwin(v38 - 8);
  v344 = &v333 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = sub_1000CE6B8(&qword_10190F300);
  __chkstk_darwin(v370);
  v374 = &v333 - v40;
  v404 = sub_1000CE6B8(&qword_10190F160);
  __chkstk_darwin(v404);
  v376 = &v333 - v41;
  v371 = _s26MultipleCuratedCollectionsVMa(0);
  __chkstk_darwin(v371);
  v342 = &v333 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
  __chkstk_darwin(v43 - 8);
  v341 = &v333 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v45 - 8);
  v336 = &v333 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for PlaceSummaryViewModelUnit.Distance(0);
  __chkstk_darwin(v47);
  v338 = &v333 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v429 = sub_1000CE6B8(&qword_10190F308);
  __chkstk_darwin(v429);
  v431 = (&v333 - v49);
  v423 = sub_1000CE6B8(&qword_10190F310);
  __chkstk_darwin(v423);
  v425 = &v333 - v50;
  v413 = sub_1000CE6B8(&qword_10190F318);
  __chkstk_darwin(v413);
  v417 = &v333 - v51;
  v395 = sub_1000CE6B8(&qword_10190F320);
  __chkstk_darwin(v395);
  v397 = &v333 - v52;
  v367 = sub_1000CE6B8(&qword_10190F328);
  __chkstk_darwin(v367);
  v368 = &v333 - v53;
  v396 = sub_1000CE6B8(&qword_10190F130);
  __chkstk_darwin(v396);
  v369 = &v333 - v54;
  v415 = sub_1000CE6B8(&qword_10190F120);
  __chkstk_darwin(v415);
  v401 = &v333 - v55;
  v424 = sub_1000CE6B8(&qword_10190F110);
  __chkstk_darwin(v424);
  v420 = &v333 - v56;
  v430 = sub_1000CE6B8(&qword_10190F100);
  __chkstk_darwin(v430);
  v427 = &v333 - v57;
  v366 = _s5LabelVMa(0);
  __chkstk_darwin(v366);
  v59 = &v333 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1000CE6B8(&unk_10190F330);
  __chkstk_darwin(v60);
  v62 = &v333 - v61;
  v335 = _s10TitleLabelVMa(0);
  __chkstk_darwin(v335);
  v64 = (&v333 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v365 = sub_1000CE6B8(&qword_10190F140);
  __chkstk_darwin(v365);
  v337 = &v333 - v65;
  v66 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  __chkstk_darwin(v66);
  v68 = &v333 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  __chkstk_darwin(v69);
  v71 = (&v333 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001C48C0(v428, v71, type metadata accessor for PlaceSummaryViewModelUnit);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v237 = v71;
      v95 = v338;
      sub_1001C4928(v237, v338, type metadata accessor for PlaceSummaryViewModelUnit.Distance);

      AttributeContainer.init()();
      v238 = v59;
      AttributedString.init(_:attributes:)();
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      v239 = EnvironmentObject.init()();
      v241 = v240;
      KeyPath = swift_getKeyPath();
      v243 = v366;
      *(v238 + *(v366 + 48)) = KeyPath;
      sub_1000CE6B8(&qword_10190A1A0);
      swift_storeEnumTagMultiPayload();
      v244 = (v238 + v243[5]);
      *v244 = 0;
      v244[1] = 0;
      *(v238 + v243[6]) = 0;
      *(v238 + v243[7]) = 0;
      *(v238 + v243[8]) = 0;
      *(v238 + v243[9]) = 0;
      v245 = v238 + v243[10];
      *v245 = 1;
      *(v245 + 8) = 0;
      v246 = (v238 + v243[11]);
      *v246 = v239;
      v246[1] = v241;
      sub_1001C48C0(v238, v368, _s5LabelVMa);
      swift_storeEnumTagMultiPayload();
      sub_1001C3B3C();
      sub_1001C3C48(&qword_10190F150, _s5LabelVMa);
      v247 = v369;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v247, v397, &qword_10190F130);
      swift_storeEnumTagMultiPayload();
      sub_1001C3A80();
      sub_1001C3CB0();
      v248 = v401;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v247, &qword_10190F130);
      sub_1000D2DFC(v248, v417, &qword_10190F120);
      swift_storeEnumTagMultiPayload();
      sub_1001C39F4();
      sub_1001C3DDC();
      v249 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v248, &qword_10190F120);
      sub_1000D2DFC(v249, v425, &qword_10190F110);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v250 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v249, &qword_10190F110);
      sub_1000D2DFC(v250, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v250, &qword_10190F100);
      sub_1001C4CC4(v238, _s5LabelVMa);
      v112 = type metadata accessor for PlaceSummaryViewModelUnit.Distance;
      goto LABEL_27;
    case 2u:
      v113 = v341;
      sub_1001C4928(v71, v341, type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
      v167 = v371;
      v168 = v342;
      sub_1001C48C0(v113, &v342[*(v371 + 36)], type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides);
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      v169 = EnvironmentObject.init()();
      v171 = v170;
      v172 = swift_getKeyPath();
      *v168 = v169;
      *(v168 + 8) = v171;
      *(v168 + 16) = v172;
      *(v168 + 24) = 0;
      *(v168 + 32) = 0;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v173 = qword_1019600D8;
      v174 = String._bridgeToObjectiveC()();
      v175 = String._bridgeToObjectiveC()();
      v176 = [v173 localizedStringForKey:v174 value:v175 table:0];

      v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v179 = v178;

      *(v168 + 40) = v177;
      *(v168 + 48) = v179;
      v456._object = 0x8000000101221C90;
      v180._countAndFlagsBits = 0x6469754720756C25;
      v456._countAndFlagsBits = 0xD00000000000007DLL;
      v180._object = 0xEA00000000007365;
      v181._countAndFlagsBits = 0;
      v181._object = 0xE000000000000000;
      *(v168 + 56) = NSLocalizedString(_:tableName:bundle:value:comment:)(v180, 0, v173, v181, v456);
      v457._object = 0x800000010121F570;
      v182._countAndFlagsBits = 0x5020739980E24025;
      v182._object = 0xAB000000006B6369;
      v183._countAndFlagsBits = 0;
      v183._object = 0xE000000000000000;
      v457._countAndFlagsBits = 0x1000000000000048;
      *(v168 + 72) = NSLocalizedString(_:tableName:bundle:value:comment:)(v182, 0, v173, v183, v457);
      v184 = *(v167 + 40);
      *(v168 + v184) = MapsFeature_IsEnabled_SearchAndDiscovery();
      *(v168 + *(v167 + 44)) = 0x4008000000000000;
      sub_1001C48C0(v168, v374, _s26MultipleCuratedCollectionsVMa);
      swift_storeEnumTagMultiPayload();
      sub_1001C3C48(&qword_10190F168, _s26MultipleCuratedCollectionsVMa);
      sub_1001C3C48(&qword_10190F170, _s18SingleCuratedGuideVMa);
      v185 = v376;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v185, v397, &qword_10190F160);
      swift_storeEnumTagMultiPayload();
      sub_1001C3A80();
      sub_1001C3CB0();
      v186 = v401;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v185, &qword_10190F160);
      sub_1000D2DFC(v186, v417, &qword_10190F120);
      swift_storeEnumTagMultiPayload();
      sub_1001C39F4();
      sub_1001C3DDC();
      v187 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v186, &qword_10190F120);
      sub_1000D2DFC(v187, v425, &qword_10190F110);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v188 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v187, &qword_10190F110);
      sub_1000D2DFC(v188, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v188, &qword_10190F100);
      sub_1001C4CC4(v168, _s26MultipleCuratedCollectionsVMa);
      v123 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides;
      goto LABEL_39;
    case 3u:
      v113 = v344;
      sub_1001C4928(v71, v344, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
      v201 = v377;
      v202 = v346;
      sub_1001C48C0(v113, &v346[*(v377 + 32)], type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      v203 = EnvironmentObject.init()();
      v205 = v204;
      v206 = swift_getKeyPath();
      *v202 = v203;
      *(v202 + 8) = v205;
      *(v202 + 16) = v206;
      *(v202 + 24) = 0;
      *(v202 + 32) = 0;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v207.super.isa = qword_1019600D8;
      v458._object = 0x8000000101221C20;
      v208._countAndFlagsBits = 0x402520776F6853;
      v458._countAndFlagsBits = 0xD00000000000004FLL;
      v208._object = 0xE700000000000000;
      v209._countAndFlagsBits = 0;
      v209._object = 0xE000000000000000;
      *(v202 + 40) = NSLocalizedString(_:tableName:bundle:value:comment:)(v208, 0, qword_1019600D8, v209, v458);
      v459._object = 0x800000010121F570;
      v210._countAndFlagsBits = 0x5020739980E24025;
      v210._object = 0xAB000000006B6369;
      v211._countAndFlagsBits = 0;
      v211._object = 0xE000000000000000;
      v459._countAndFlagsBits = 0x1000000000000048;
      *(v202 + 56) = NSLocalizedString(_:tableName:bundle:value:comment:)(v210, 0, v207, v211, v459);
      v212 = *(v201 + 36);
      *(v202 + v212) = MapsFeature_IsEnabled_SearchAndDiscovery();
      *(v202 + *(v201 + 40)) = 0x4008000000000000;
      sub_1001C48C0(v202, v374, _s18SingleCuratedGuideVMa);
      swift_storeEnumTagMultiPayload();
      sub_1001C3C48(&qword_10190F168, _s26MultipleCuratedCollectionsVMa);
      sub_1001C3C48(&qword_10190F170, _s18SingleCuratedGuideVMa);
      v213 = v376;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v213, v397, &qword_10190F160);
      swift_storeEnumTagMultiPayload();
      sub_1001C3A80();
      sub_1001C3CB0();
      v214 = v401;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v213, &qword_10190F160);
      sub_1000D2DFC(v214, v417, &qword_10190F120);
      swift_storeEnumTagMultiPayload();
      sub_1001C39F4();
      sub_1001C3DDC();
      v215 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v214, &qword_10190F120);
      sub_1000D2DFC(v215, v425, &qword_10190F110);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v216 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v215, &qword_10190F110);
      sub_1000D2DFC(v216, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v216, &qword_10190F100);
      sub_1001C4CC4(v202, _s18SingleCuratedGuideVMa);
      v123 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide;
      goto LABEL_39;
    case 4u:
      v113 = v345;
      sub_1001C4928(v71, v345, type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide);
      v124 = v347;
      sub_1001C48C0(v113, &v347[*(v373 + 28)], type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide);
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      v125 = EnvironmentObject.init()();
      v127 = v126;
      v128 = swift_getKeyPath();
      *v124 = v125;
      *(v124 + 8) = v127;
      *(v124 + 16) = v128;
      *(v124 + 24) = 0;
      *(v124 + 32) = 0;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v453._object = 0x8000000101221BC0;
      v129._countAndFlagsBits = 0x402520776F6853;
      v453._countAndFlagsBits = 0xD000000000000056;
      v129._object = 0xE700000000000000;
      v130._countAndFlagsBits = 0;
      v130._object = 0xE000000000000000;
      *(v124 + 40) = NSLocalizedString(_:tableName:bundle:value:comment:)(v129, 0, qword_1019600D8, v130, v453);
      sub_1001C48C0(v124, v375, _s18UserGeneratedGuideVMa);
      swift_storeEnumTagMultiPayload();
      sub_1001C3C48(&qword_10190F198, _s18UserGeneratedGuideVMa);
      sub_1001C3C48(&qword_10190F1A0, _s17FirstPartyRatingsVMa);
      v131 = v378;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v131, v400, &qword_10190F190);
      swift_storeEnumTagMultiPayload();
      sub_1001C3E68();
      sub_1001C3F94();
      v132 = v405;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v131, &qword_10190F190);
      sub_1000D2DFC(v132, v417, &qword_10190F180);
      swift_storeEnumTagMultiPayload();
      sub_1001C39F4();
      sub_1001C3DDC();
      v133 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v132, &qword_10190F180);
      sub_1000D2DFC(v133, v425, &qword_10190F110);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v134 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v133, &qword_10190F110);
      sub_1000D2DFC(v134, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v134, &qword_10190F100);
      sub_1001C4CC4(v124, _s18UserGeneratedGuideVMa);
      v123 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide;
      goto LABEL_39;
    case 5u:
      v113 = v348;
      sub_1001C4928(v71, v348, type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings);
      v260 = PartyRatings;
      v261 = *(v113 + *(PartyRatings + 24));
      v262 = Color.init(uiColor:)();
      v263 = *(v113 + *(v260 + 20));
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      v264 = EnvironmentObject.init()();
      v265 = v349;
      *v349 = v264;
      *(v265 + 8) = v266;
      v267 = PartyRatingsVMa;
      *&v442 = 0x4010000000000000;
      sub_10018C5CC();
      ScaledMetric.init(wrappedValue:)();
      v268 = (v265 + v267[6]);
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v462._object = 0xE900000000000064;
      v269._object = 0xEF5D4347555B2064;
      v269._countAndFlagsBits = 0x6E656D6D6F636552;
      v270._countAndFlagsBits = 0x6E656D6D6F636552;
      v270._object = 0xE900000000000064;
      v462._countAndFlagsBits = 0x6E656D6D6F636552;
      *v268 = NSLocalizedString(_:tableName:bundle:value:comment:)(v269, 0, qword_1019600D8, v270, v462);
      *(v265 + v267[7]) = v262;
      *(v265 + v267[8]) = v263;
      v271 = v267[9];
      *(v265 + v271) = MapsFeature_IsEnabled_SearchAndDiscovery();
      sub_1001C48C0(v265, v375, _s17FirstPartyRatingsVMa);
      swift_storeEnumTagMultiPayload();
      sub_1001C3C48(&qword_10190F198, _s18UserGeneratedGuideVMa);
      sub_1001C3C48(&qword_10190F1A0, _s17FirstPartyRatingsVMa);
      v272 = v378;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v272, v400, &qword_10190F190);
      swift_storeEnumTagMultiPayload();
      sub_1001C3E68();
      sub_1001C3F94();
      v273 = v405;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v272, &qword_10190F190);
      sub_1000D2DFC(v273, v417, &qword_10190F180);
      swift_storeEnumTagMultiPayload();
      sub_1001C39F4();
      sub_1001C3DDC();
      v274 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v273, &qword_10190F180);
      sub_1000D2DFC(v274, v425, &qword_10190F110);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v275 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v274, &qword_10190F110);
      sub_1000D2DFC(v275, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v275, &qword_10190F100);
      sub_1001C4CC4(v265, _s17FirstPartyRatingsVMa);
      v123 = type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings;
      goto LABEL_39;
    case 6u:
      v113 = v351;
      sub_1001C4928(v71, v351, type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings);
      v283 = v381;
      v284 = v353;
      sub_1001C48C0(v113, v353 + *(v381 + 28), type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings);
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      *v284 = EnvironmentObject.init()();
      v284[1] = v285;
      *&v442 = 0x4010000000000000;
      sub_10018C5CC();
      ScaledMetric.init(wrappedValue:)();
      v286 = (v284 + *(v283 + 24));
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v463._object = 0x8000000101221B60;
      v287._countAndFlagsBits = 0x4025206E6FLL;
      v463._countAndFlagsBits = 0xD00000000000005ELL;
      v287._object = 0xE500000000000000;
      v288._countAndFlagsBits = 0;
      v288._object = 0xE000000000000000;
      *v286 = NSLocalizedString(_:tableName:bundle:value:comment:)(v287, 0, qword_1019600D8, v288, v463);
      v289 = *(v283 + 32);
      *(v284 + v289) = MapsFeature_IsEnabled_SearchAndDiscovery();
      sub_1001C48C0(v284, v382, _s17ThirdPartyRatingsVMa);
      swift_storeEnumTagMultiPayload();
      sub_1001C3C48(&qword_10190F1B8, _s17ThirdPartyRatingsVMa);
      sub_1001C4070();
      v290 = v385;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v290, v400, &qword_10190F1B0);
      swift_storeEnumTagMultiPayload();
      sub_1001C3E68();
      sub_1001C3F94();
      v291 = v405;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v290, &qword_10190F1B0);
      sub_1000D2DFC(v291, v417, &qword_10190F180);
      swift_storeEnumTagMultiPayload();
      sub_1001C39F4();
      sub_1001C3DDC();
      v292 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v291, &qword_10190F180);
      sub_1000D2DFC(v292, v425, &qword_10190F110);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v293 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v292, &qword_10190F110);
      sub_1000D2DFC(v293, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v293, &qword_10190F100);
      sub_1001C4CC4(v284, _s17ThirdPartyRatingsVMa);
      v123 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings;
      goto LABEL_39;
    case 7u:
      v217 = v383;
      sub_1001C4928(v71, v383, type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations);
      v218 = *(v217 + *(v340 + 20));
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      v219 = EnvironmentObject.init()();
      v221 = v220;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v222.super.isa = qword_1019600D8;
      v460._object = 0x8000000101221AA0;
      v223._countAndFlagsBits = 0x6F63655220756F59;
      v223._object = 0xED0000646E656D6DLL;
      v224._countAndFlagsBits = 0xD000000000000013;
      v224._object = 0x8000000101221A80;
      v460._countAndFlagsBits = 0xD00000000000004DLL;
      v225 = NSLocalizedString(_:tableName:bundle:value:comment:)(v224, 0, qword_1019600D8, v223, v460);
      v461._object = 0x8000000101221B10;
      v226._countAndFlagsBits = 0x6C73694420756F59;
      v226._object = 0xEB00000000656B69;
      v227._object = 0x8000000101221AF0;
      v461._countAndFlagsBits = 0xD00000000000004CLL;
      v227._countAndFlagsBits = 0xD000000000000011;
      v228 = NSLocalizedString(_:tableName:bundle:value:comment:)(v227, 0, v222, v226, v461);
      v229 = v382;
      v382->_countAndFlagsBits = v219;
      v229->_object = v221;
      v229[1] = v225;
      v229[2] = v228;
      LOBYTE(v229[3]._countAndFlagsBits) = v218;
      swift_storeEnumTagMultiPayload();
      sub_1001C3C48(&qword_10190F1B8, _s17ThirdPartyRatingsVMa);
      sub_1001C4070();
      v230 = v219;

      v231 = v385;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v231, v400, &qword_10190F1B0);
      swift_storeEnumTagMultiPayload();
      sub_1001C3E68();
      sub_1001C3F94();
      v232 = v405;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v231, &qword_10190F1B0);
      sub_1000D2DFC(v232, v417, &qword_10190F180);
      swift_storeEnumTagMultiPayload();
      sub_1001C39F4();
      sub_1001C3DDC();
      v233 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v232, &qword_10190F180);
      sub_1000D2DFC(v233, v425, &qword_10190F110);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v234 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v233, &qword_10190F110);
      sub_1000D2DFC(v234, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();

      sub_100024F64(v234, &qword_10190F100);
      v235 = type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations;
      v236 = v383;
      return sub_1001C4CC4(v236, v235);
    case 8u:
      v113 = v352;
      sub_1001C4928(v71, v352, type metadata accessor for PlaceSummaryViewModelUnit.TransitShields);
      v303 = *(v113 + *(v343 + 20));
      LOBYTE(v447) = 0;
      v446 = 1;
      v434 = 1;
      v433 = 0;
      *&v435 = v303;
      BYTE8(v435) = 0;
      *&v436 = 0;
      BYTE8(v436) = 1;
      v437 = 0uLL;
      LOBYTE(v438) = 1;
      BYTE9(v439[1]) = 0;
      sub_10016E9EC();
      sub_1001C4268();
      v304 = v303;
      _ConditionalContent<>.init(storage:)();
      v305 = v445[0];
      v306 = v445[1];
      v307 = v443;
      v308 = v403;
      v403[2] = v444;
      v308[3] = v305;
      v308[4] = v306;
      *(v308 + 74) = *(&v445[1] + 10);
      *v308 = v442;
      v308[1] = v307;
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&unk_10190F1F0);
      sub_1001C41DC();
      sub_1001C42BC();
      v309 = v408;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v309, v418, &qword_10190F1E0);
      swift_storeEnumTagMultiPayload();
      sub_1001C4150();
      sub_1001C43E8();
      v310 = v421;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v309, &qword_10190F1E0);
      sub_1000D2DFC(v310, v425, &qword_10190F1D0);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v311 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v310, &qword_10190F1D0);
      sub_1000D2DFC(v311, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();

      sub_100024F64(v311, &qword_10190F100);
      v123 = type metadata accessor for PlaceSummaryViewModelUnit.TransitShields;
      goto LABEL_39;
    case 9u:
      v145 = *v71;
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);

      v422 = EnvironmentObject.init()();
      v147 = v146;
      v148 = swift_getKeyPath();
      type metadata accessor for PlaceSummaryViewModelUnit.ContainmentParent(0);
      sub_1001C3C48(&unk_10190F370, type metadata accessor for PlaceSummaryViewModelUnit.ContainmentParent);
      v428 = v145;
      v149 = ObservedObject.init(wrappedValue:)();
      v151 = v150;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v152.super.isa = qword_1019600D8;
      v454._object = 0x80000001012219F0;
      v153._countAndFlagsBits = 0x6E6F697461636F4CLL;
      v153._object = 0xEB00000000402520;
      v454._countAndFlagsBits = 0xD000000000000022;
      v154._countAndFlagsBits = 0;
      v154._object = 0xE000000000000000;
      v155 = NSLocalizedString(_:tableName:bundle:value:comment:)(v153, 0, qword_1019600D8, v154, v454);
      v455._object = 0x8000000101221A20;
      v156._countAndFlagsBits = 0x4025206F74206F47;
      v455._countAndFlagsBits = 0xD000000000000058;
      v156._object = 0xE800000000000000;
      v157._countAndFlagsBits = 0;
      v157._object = 0xE000000000000000;
      v158 = NSLocalizedString(_:tableName:bundle:value:comment:)(v156, 0, v152, v157, v455);
      IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
      *&v447 = v422;
      *(&v447 + 1) = v147;
      v448 = v148;
      LOBYTE(v449) = 0;
      *(&v449 + 1) = v149;
      *v450 = v151;
      *&v450[8] = v155;
      *&v450[24] = v158;
      v450[40] = IsEnabled_SearchAndDiscovery;
      v437 = v449;
      v438 = *v450;
      v439[0] = *&v450[16];
      *(v439 + 9) = *&v450[25];
      v435 = v447;
      v436 = v148;
      v446 = 1;
      BYTE9(v439[1]) = 1;
      sub_1001C4D78(&v447, &v442);
      sub_10016E9EC();
      sub_1001C4268();
      _ConditionalContent<>.init(storage:)();
      v160 = v445[0];
      v161 = v445[1];
      v162 = v443;
      v163 = v403;
      v403[2] = v444;
      v163[3] = v160;
      v163[4] = v161;
      *(v163 + 74) = *(&v445[1] + 10);
      *v163 = v442;
      v163[1] = v162;
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&unk_10190F1F0);
      sub_1001C41DC();
      sub_1001C42BC();
      v164 = v408;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v164, v418, &qword_10190F1E0);
      swift_storeEnumTagMultiPayload();
      sub_1001C4150();
      sub_1001C43E8();
      v165 = v421;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v164, &qword_10190F1E0);
      sub_1000D2DFC(v165, v425, &qword_10190F1D0);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v166 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v165, &qword_10190F1D0);
      sub_1000D2DFC(v166, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_1001C4DB0(&v447);

      return sub_100024F64(v166, &qword_10190F100);
    case 0xAu:
      v135 = v355;
      sub_1001C4928(v71, v355, type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry);
      v294 = v356;
      sub_1001C48C0(v135, &v356[*(v386 + 24)], type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry);
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      v295 = EnvironmentObject.init()();
      v297 = v296;
      v298 = swift_getKeyPath();
      *v294 = v295;
      *(v294 + 8) = v297;
      *(v294 + 16) = v298;
      *(v294 + 24) = 0;
      *(v294 + 32) = 0;
      sub_1001C48C0(v294, v387, _s13TappableEntryVMa);
      swift_storeEnumTagMultiPayload();
      sub_1001C3C48(&qword_10190F218, _s13TappableEntryVMa);
      sub_1001C3C48(&qword_10190F220, _s9DelimiterVMa);
      v299 = v389;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v299, v403, &qword_10190F210);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&unk_10190F1F0);
      sub_1001C41DC();
      sub_1001C42BC();
      v300 = v408;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v299, &qword_10190F210);
      sub_1000D2DFC(v300, v418, &qword_10190F1E0);
      swift_storeEnumTagMultiPayload();
      sub_1001C4150();
      sub_1001C43E8();
      v301 = v421;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v300, &qword_10190F1E0);
      sub_1000D2DFC(v301, v425, &qword_10190F1D0);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v302 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v301, &qword_10190F1D0);
      sub_1000D2DFC(v302, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v302, &qword_10190F100);
      sub_1001C4CC4(v294, _s13TappableEntryVMa);
      v144 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry;
      goto LABEL_37;
    case 0xBu:
      v113 = v359;
      sub_1001C4928(v71, v359, type metadata accessor for PlaceSummaryViewModelUnit.Delimiter);
      v114 = *(v113 + *(v350 + 20));
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      v115 = EnvironmentObject.init()();
      v116 = v360;
      *v360 = v115;
      *(v116 + 8) = v117;
      v118 = v388;
      *&v442 = 0x4010000000000000;
      sub_10018C5CC();
      ScaledMetric.init(wrappedValue:)();
      *(v116 + *(v118 + 24)) = v114;
      sub_1001C48C0(v116, v387, _s9DelimiterVMa);
      swift_storeEnumTagMultiPayload();
      sub_1001C3C48(&qword_10190F218, _s13TappableEntryVMa);
      sub_1001C3C48(&qword_10190F220, _s9DelimiterVMa);
      v119 = v389;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v119, v403, &qword_10190F210);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&unk_10190F1F0);
      sub_1001C41DC();
      sub_1001C42BC();
      v120 = v408;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v119, &qword_10190F210);
      sub_1000D2DFC(v120, v418, &qword_10190F1E0);
      swift_storeEnumTagMultiPayload();
      sub_1001C4150();
      sub_1001C43E8();
      v121 = v421;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v120, &qword_10190F1E0);
      sub_1000D2DFC(v121, v425, &qword_10190F1D0);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v122 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v121, &qword_10190F1D0);
      sub_1000D2DFC(v122, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v122, &qword_10190F100);
      sub_1001C4CC4(v116, _s9DelimiterVMa);
      v123 = type metadata accessor for PlaceSummaryViewModelUnit.Delimiter;
      goto LABEL_39;
    case 0xCu:
      v135 = v361;
      sub_1001C4928(v71, v361, type metadata accessor for PlaceSummaryViewModelUnit.Hours);
      v136 = *(v354 + 20);
      v137 = type metadata accessor for AttributedString();
      v138 = v362;
      (*(*(v137 - 8) + 16))(v362, v135 + v136, v137);
      v139 = *(v391 + 20);
      *(v138 + v139) = MapsFeature_IsEnabled_SearchAndDiscovery();
      sub_1001C48C0(v138, v392, _s5HoursVMa);
      swift_storeEnumTagMultiPayload();
      sub_1001C3C48(&qword_10190F248, _s5HoursVMa);
      sub_1001C3C48(&qword_10190F250, _s28RealTimeAvailableChargerViewVMa);
      v140 = v394;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v140, v411, &qword_10190F240);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F260);
      sub_1001C4474();
      sub_1001C45A0();
      v141 = v412;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v140, &qword_10190F240);
      sub_1000D2DFC(v141, v418, &qword_10190F230);
      swift_storeEnumTagMultiPayload();
      sub_1001C4150();
      sub_1001C43E8();
      v142 = v421;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v141, &qword_10190F230);
      sub_1000D2DFC(v142, v425, &qword_10190F1D0);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v143 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v142, &qword_10190F1D0);
      sub_1000D2DFC(v143, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v143, &qword_10190F100);
      sub_1001C4CC4(v138, _s5HoursVMa);
      v144 = type metadata accessor for PlaceSummaryViewModelUnit.Hours;
LABEL_37:
      v235 = v144;
      v236 = v135;
      return sub_1001C4CC4(v236, v235);
    case 0xDu:
      swift_beginAccess();
      type metadata accessor for PlaceSummaryEVChargerViewModel(0);
      sub_1001C3C48(&unk_101918A60, type metadata accessor for PlaceSummaryEVChargerViewModel);

      v276 = ObservedObject.init(wrappedValue:)();
      v113 = v363;
      *v363 = v276;
      *(v113 + 8) = v277;
      strcpy((v113 + 16), "powerplug.fill");
      *(v113 + 31) = -18;
      *(v113 + 32) = 0xD000000000000019;
      *(v113 + 40) = 0x80000001012219D0;
      v278 = v393;
      *&v435 = 0xC008000000000000;
      sub_1001C4D24();
      ScaledMetric.init(wrappedValue:)();
      *(v113 + *(v278 + 32)) = 0x4012D97C7F3321D2;
      sub_1001C48C0(v113, v392, _s28RealTimeAvailableChargerViewVMa);
      swift_storeEnumTagMultiPayload();
      sub_1001C3C48(&qword_10190F248, _s5HoursVMa);
      sub_1001C3C48(&qword_10190F250, _s28RealTimeAvailableChargerViewVMa);
      v279 = v394;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v279, v411, &qword_10190F240);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F260);
      sub_1001C4474();
      sub_1001C45A0();
      v280 = v412;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v279, &qword_10190F240);
      sub_1000D2DFC(v280, v418, &qword_10190F230);
      swift_storeEnumTagMultiPayload();
      sub_1001C4150();
      sub_1001C43E8();
      v281 = v421;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v280, &qword_10190F230);
      sub_1000D2DFC(v281, v425, &qword_10190F1D0);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v282 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v281, &qword_10190F1D0);
      sub_1000D2DFC(v282, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();

      sub_100024F64(v282, &qword_10190F100);
      v123 = _s28RealTimeAvailableChargerViewVMa;
LABEL_39:
      v235 = v123;
      v236 = v113;
      return sub_1001C4CC4(v236, v235);
    case 0xEu:
      v94 = v71;
      v95 = v364;
      sub_1001C4928(v94, v364, type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel);
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);

      v96 = EnvironmentObject.init()();
      v98 = v97;
      v99 = swift_getKeyPath();
      y = CGPointZero.y;
      type metadata accessor for PlaceSummaryPhotoCarouselViewModel(0);
      sub_1001C3C48(&unk_10190F350, type metadata accessor for PlaceSummaryPhotoCarouselViewModel);
      v101 = ObservedObject.init(wrappedValue:)();
      v103 = v102;
      *&v435 = CGPointZero.x;
      *(&v435 + 1) = y;
      type metadata accessor for CGPoint(0);
      State.init(wrappedValue:)();
      *&v447 = v101;
      *(&v447 + 1) = v103;
      *&v448 = v96;
      *(&v448 + 1) = v98;
      v449 = v99;
      v450[0] = 0;
      *&v450[8] = v442;
      *&v450[24] = v443;
      v437 = v99;
      v438 = *v450;
      v439[0] = *&v450[16];
      v435 = v447;
      v436 = v448;
      v446 = 0;
      v441 = 0;
      sub_1001C4C5C(&v447, &v442);
      sub_1001C462C();
      sub_1001C4680();
      _ConditionalContent<>.init(storage:)();
      v104 = v445[0];
      v105 = v445[2];
      v106 = v411;
      v411[4] = v445[1];
      v106[5] = v105;
      *(v106 + 89) = *(&v445[2] + 9);
      v107 = v443;
      v108 = v444;
      *v106 = v442;
      v106[1] = v107;
      v106[2] = v108;
      v106[3] = v104;
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F260);
      sub_1001C4474();
      sub_1001C45A0();
      v109 = v412;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v109, v418, &qword_10190F230);
      swift_storeEnumTagMultiPayload();
      sub_1001C4150();
      sub_1001C43E8();
      v110 = v421;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v109, &qword_10190F230);
      sub_1000D2DFC(v110, v425, &qword_10190F1D0);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v111 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v110, &qword_10190F1D0);
      sub_1000D2DFC(v111, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_1001C4C94(&v447);
      sub_100024F64(v111, &qword_10190F100);
      v112 = type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel;
LABEL_27:
      v235 = v112;
      v236 = v95;
      return sub_1001C4CC4(v236, v235);
    case 0xFu:
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);

      v189 = EnvironmentObject.init()();
      v191 = v190;
      v192 = swift_getKeyPath();
      sub_1001C49F8(v189, v191, v192, 0, 0, &v447);
      v439[0] = *&v450[16];
      v439[1] = *&v450[32];
      v440 = v451;
      v435 = v447;
      v436 = v448;
      v437 = v449;
      v438 = *v450;
      v446 = 1;
      v441 = 1;
      sub_1001C4BF4(&v447, &v442);
      sub_1001C462C();
      sub_1001C4680();
      _ConditionalContent<>.init(storage:)();
      v193 = v445[0];
      v194 = v445[2];
      v195 = v411;
      v411[4] = v445[1];
      v195[5] = v194;
      *(v195 + 89) = *(&v445[2] + 9);
      v196 = v443;
      v197 = v444;
      *v195 = v442;
      v195[1] = v196;
      v195[2] = v197;
      v195[3] = v193;
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F260);
      sub_1001C4474();
      sub_1001C45A0();
      v198 = v412;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v198, v418, &qword_10190F230);
      swift_storeEnumTagMultiPayload();
      sub_1001C4150();
      sub_1001C43E8();
      v199 = v421;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v198, &qword_10190F230);
      sub_1000D2DFC(v199, v425, &qword_10190F1D0);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v200 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v199, &qword_10190F1D0);
      sub_1000D2DFC(v200, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_1001C4C2C(&v447);

      return sub_100024F64(v200, &qword_10190F100);
    case 0x10u:
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);

      v80 = EnvironmentObject.init()();
      v82 = v81;
      v83 = swift_getKeyPath();
      type metadata accessor for PlaceSummaryViewModelUnit.UserNote(0);
      sub_1001C3C48(&qword_10190F348, type metadata accessor for PlaceSummaryViewModelUnit.UserNote);
      v84 = ObservedObject.init(wrappedValue:)();
      v86 = v85;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v452._object = 0x8000000101221990;
      v87._countAndFlagsBits = 0x616C5020776F6853;
      v87._object = 0xEF64726163206563;
      v452._countAndFlagsBits = 0xD00000000000003FLL;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, qword_1019600D8, v88, v452);
      *&v447 = v80;
      *(&v447 + 1) = v82;
      v448 = v83;
      LOBYTE(v449) = 0;
      *(&v449 + 1) = v84;
      *v450 = v86;
      *&v450[8] = v89;
      v437 = v449;
      v438 = *v450;
      *&v439[0] = v89._object;
      v435 = v447;
      v436 = v83;
      v446 = 0;
      BYTE8(v439[0]) = 0;
      sub_1001C4990(&v447, &v442);
      sub_1001C4760();
      sub_1001C47B4();
      _ConditionalContent<>.init(storage:)();
      v90 = v443;
      v91 = v445[0];
      v92 = v431;
      v431[2] = v444;
      v92[3] = v91;
      *(v92 + 57) = *(v445 + 9);
      *v92 = v442;
      v92[1] = v90;
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();

      return sub_1001C49C8(&v447);
    case 0x11u:
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);

      v251 = EnvironmentObject.init()();
      v253 = v252;
      type metadata accessor for PlaceSummaryViewModelUnit.VisitedPlace(0);
      sub_1001C3C48(&qword_10190F340, type metadata accessor for PlaceSummaryViewModelUnit.VisitedPlace);
      v254 = ObservedObject.init(wrappedValue:)();
      v446 = 1;
      *&v435 = v251;
      *(&v435 + 1) = v253;
      *&v436 = v254;
      *(&v436 + 1) = v255;
      v437 = v447;
      v438 = v448;
      *&v439[0] = v449;
      BYTE8(v439[0]) = 1;
      sub_1001C4760();
      sub_1001C47B4();
      v256 = v251;

      _ConditionalContent<>.init(storage:)();
      v257 = v443;
      v258 = v445[0];
      v259 = v431;
      v431[2] = v444;
      v259[3] = v258;
      *(v259 + 57) = *(v445 + 9);
      *v259 = v442;
      v259[1] = v257;
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();

    default:
      sub_1001C4928(v71, v68, type metadata accessor for PlaceSummaryViewModelUnit.Label);
      v72 = *(v358 + *(_s4LineVMa(0) + 20));
      v73 = v66[5];
      v334 = v68;
      if (v72 == 1)
      {
        v74 = v335;
        v75 = *(v335 + 20);
        v76 = type metadata accessor for AttributedString();
        (*(*(v76 - 8) + 16))(v64 + v75, &v68[v73], v76);
        sub_1000D2DFC(&v68[v66[12]], v64 + *(v74 + 24), &qword_10190F380);
        type metadata accessor for PlaceSummaryViewModelTemplate(0);
        sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
        *v64 = EnvironmentObject.init()();
        v64[1] = v77;
        sub_1001C48C0(v64, v62, _s10TitleLabelVMa);
        swift_storeEnumTagMultiPayload();
        sub_1001C3C48(&qword_10190F148, _s10TitleLabelVMa);
        sub_1001C3C48(&qword_10190F150, _s5LabelVMa);
        v78 = v337;
        _ConditionalContent<>.init(storage:)();
        v79 = _s10TitleLabelVMa;
      }

      else
      {
        v312 = type metadata accessor for AttributedString();
        v64 = v59;
        (*(*(v312 - 8) + 16))(v59, &v68[v73], v312);
        v313 = v66[7];
        v314 = &v68[v66[6]];
        v315 = *(v314 + 1);
        v421 = *v314;
        v416 = v315;
        v414 = *&v68[v313];
        v316 = v66[9];
        v428 = *&v68[v66[8]];
        v317 = *&v68[v316];
        v318 = v66[11];
        v319 = *&v68[v66[10]];
        v419 = *&v68[v318];
        LODWORD(v418) = v68[v318 + 8];
        v412 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
        sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);

        v320 = EnvironmentObject.init()();
        v322 = v321;
        v323 = swift_getKeyPath();
        v324 = v366;
        *(v64 + *(v366 + 48)) = v323;
        sub_1000CE6B8(&qword_10190A1A0);
        swift_storeEnumTagMultiPayload();
        v325 = (v64 + v324[5]);
        v326 = v416;
        *v325 = v421;
        v325[1] = v326;
        *(v64 + v324[6]) = v414;
        *(v64 + v324[7]) = v428;
        *(v64 + v324[8]) = v317;
        *(v64 + v324[9]) = v319;
        v327 = v64 + v324[10];
        *v327 = v419;
        v327[8] = v418;
        v328 = (v64 + v324[11]);
        *v328 = v320;
        v328[1] = v322;
        sub_1001C48C0(v64, v62, _s5LabelVMa);
        swift_storeEnumTagMultiPayload();
        sub_1001C3C48(&qword_10190F148, _s10TitleLabelVMa);
        sub_1001C3C48(&qword_10190F150, _s5LabelVMa);
        v78 = v337;
        _ConditionalContent<>.init(storage:)();
        v79 = _s5LabelVMa;
      }

      sub_1001C4CC4(v64, v79);
      sub_1000D2DFC(v78, v368, &qword_10190F140);
      swift_storeEnumTagMultiPayload();
      sub_1001C3B3C();
      sub_1001C3C48(&qword_10190F150, _s5LabelVMa);
      v329 = v369;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v329, v397, &qword_10190F130);
      swift_storeEnumTagMultiPayload();
      sub_1001C3A80();
      sub_1001C3CB0();
      v330 = v401;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v329, &qword_10190F130);
      sub_1000D2DFC(v330, v417, &qword_10190F120);
      swift_storeEnumTagMultiPayload();
      sub_1001C39F4();
      sub_1001C3DDC();
      v331 = v420;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v330, &qword_10190F120);
      sub_1000D2DFC(v331, v425, &qword_10190F110);
      swift_storeEnumTagMultiPayload();
      sub_1001C3968();
      sub_1001C40C4();
      v332 = v427;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v331, &qword_10190F110);
      sub_1000D2DFC(v332, v431, &qword_10190F100);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_10190F280);
      sub_1001C38DC();
      sub_1001C46D4();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v332, &qword_10190F100);
      sub_100024F64(v78, &qword_10190F140);
      v235 = type metadata accessor for PlaceSummaryViewModelUnit.Label;
      v236 = v334;
      return sub_1001C4CC4(v236, v235);
  }
}