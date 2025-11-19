uint64_t sub_1000CCEF8@<X0>(uint64_t a1@<X8>)
{
  v2 = StocksKitCurrencyCache.Provider.name.getter();
  sub_1000CB37C(v2, v3, a1);
}

uint64_t sub_1000CCF6C(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1000CD034(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = CalculateUnit.id.getter();
  v6 = v5;
  v7 = (a2 + *(type metadata accessor for UnitConversionPopoverView() + 48));
  v13 = *v7;
  v14 = *(v7 + 2);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (v12)
  {
    if (v4 == v11 && v12 == v6)
    {

      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000CD130(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = CalculateUnitCategory.id.getter();
  v6 = v5;
  v7 = (a2 + *(type metadata accessor for UnitConversionPopoverView() + 44));
  v13 = *v7;
  v14 = *(v7 + 2);
  sub_10003AE84(&qword_1001588C0, &qword_100113210);
  State.wrappedValue.getter();
  if (v12)
  {
    if (v4 == v11 && v12 == v6)
    {

      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000CD22C()
{
  sub_10003AE84(&qword_100158900, &qword_100113310);
  v0 = *(type metadata accessor for KeyEquivalent() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100113090;
  static KeyEquivalent.upArrow.getter();
  static KeyEquivalent.downArrow.getter();
  static KeyEquivalent.leftArrow.getter();
  static KeyEquivalent.rightArrow.getter();
  static KeyEquivalent.space.getter();
  static KeyEquivalent.return.getter();
  v4 = sub_1000CF68C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1001586B0 = v4;
  return result;
}

double sub_1000CD370()
{
  sub_10003AE84(&qword_100158DF8, &qword_1001137F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001130A0;
  *(v0 + 32) = static Color.clear.getter();
  *(v0 + 40) = static Color.black.getter();
  *(v0 + 48) = static Color.black.getter();
  *(v0 + 56) = static Color.black.getter();
  *(v0 + 64) = static Color.black.getter();
  *(v0 + 72) = static Color.black.getter();
  *(v0 + 80) = static Color.black.getter();
  *(v0 + 88) = static Color.black.getter();
  *(v0 + 96) = static Color.black.getter();
  *(v0 + 104) = static Color.black.getter();
  *(v0 + 112) = static Color.black.getter();
  *(v0 + 120) = static Color.black.getter();
  *(v0 + 128) = static Color.black.getter();
  *(v0 + 136) = static Color.black.getter();
  *(v0 + 144) = static Color.black.getter();
  *(v0 + 152) = static Color.black.getter();
  *(v0 + 160) = static Color.black.getter();
  *(v0 + 168) = static Color.black.getter();
  *(v0 + 176) = static Color.black.getter();
  *(v0 + 184) = static Color.clear.getter();
  Gradient.init(colors:)();
  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v2;
  xmmword_1001586B8 = v2;
  unk_1001586C8 = v3;
  qword_1001586D8 = v4;
  return result;
}

uint64_t sub_1000CD4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v92 = a1;
  swift_getWitnessTable();
  v4 = type metadata accessor for _ViewModifier_Content();
  v83 = *(v4 - 8);
  v5 = *(v83 + 8);
  v6 = __chkstk_darwin(v4);
  v85 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v73 - v8;
  v10 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = *(v87 + 64);
  __chkstk_darwin(v10);
  v86 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v101 = v4;
  v102 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v82 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v80 = &v73 - v16;
  v101 = v4;
  v102 = WitnessTable;
  v98 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v101 = OpaqueTypeMetadata2;
  v102 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  __chkstk_darwin(v18);
  v79 = &v73 - v20;
  v21 = *(a2 + 24);
  v77 = *(a2 + 16);
  v76 = v21;
  v22 = type metadata accessor for ToolbarItem();
  v23 = swift_getWitnessTable();
  v101 = v22;
  v102 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v84 = OpaqueTypeMetadata2;
  v101 = OpaqueTypeMetadata2;
  v102 = OpaqueTypeConformance2;
  v78 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v101 = v22;
  v102 = v23;
  v26 = v18;
  v27 = swift_getOpaqueTypeConformance2();
  v101 = v18;
  v102 = v24;
  v91 = v24;
  v96 = v27;
  v97 = v25;
  v103 = v25;
  v104 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v73 - v34;
  v36 = type metadata accessor for _ConditionalContent();
  v89 = *(v36 - 8);
  v90 = v36;
  v37 = *(v89 + 64);
  __chkstk_darwin(v36);
  v95 = &v73 - v38;
  if (sub_10003DC4C(v94))
  {
    LocalizedStringKey.init(stringLiteral:)();
    v72 = 2;
    v71 = 21;
    v39 = Text.init(_:tableName:bundle:comment:)();
    v85 = v28;
    v40 = v39;
    v75 = v4;
    v42 = v41;
    v83 = v35;
    v44 = v43;
    v74 = v29;
    v45 = v80;
    View.navigationTitle(_:)();
    v46 = v42;
    v26 = v18;
    sub_10000C6AC(v40, v46, v44 & 1);

    v48 = v86;
    v47 = v87;
    v49 = v88;
    (*(v87 + 104))(v86, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v88);
    v50 = v79;
    v51 = v84;
    View.navigationBarTitleDisplayMode(_:)();
    (*(v47 + 8))(v48, v49);
    v52 = (*(v82 + 8))(v45, v51);
    __chkstk_darwin(v52);
    v53 = v76;
    *(&v73 - 4) = v77;
    *(&v73 - 3) = v53;
    v71 = v94;
    v54 = v91;
    v55 = swift_checkMetadataState();
    v57 = v96;
    v56 = v97;
    View.toolbar<A>(content:)();
    (*(v81 + 8))(v50, v26);
    v101 = v26;
    v102 = v55;
    v103 = v56;
    v104 = v57;
    swift_getOpaqueTypeConformance2();
    v58 = v74;
    v59 = *(v74 + 16);
    v60 = v83;
    v61 = v85;
    v59(v83, v33, v85);
    v62 = *(v58 + 8);
    v62(v33, v61);
    v59(v33, v60, v61);
    sub_100013B54(v33, v61);
    v62(v33, v61);
    v62(v60, v61);
  }

  else
  {
    v63 = v83;
    v64 = *(v83 + 2);
    v64(v9, v92, v4);
    v65 = v85;
    v64(v85, v9, v4);
    v54 = v91;
    v101 = v26;
    v102 = v91;
    v103 = v97;
    v104 = v96;
    swift_getOpaqueTypeConformance2();
    sub_1000BB374(v65, v28, v4);
    v66 = *(v63 + 1);
    v66(v65, v4);
    v66(v9, v4);
  }

  v101 = v26;
  v102 = v54;
  v103 = v97;
  v104 = v96;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v98;
  v67 = v90;
  swift_getWitnessTable();
  v68 = v89;
  v69 = v95;
  (*(v89 + 16))(v93, v95, v67);
  return (*(v68 + 8))(v69, v67);
}

uint64_t sub_1000CDDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ToolbarItemPlacement();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for ToolbarItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v18[-v14];
  static ToolbarItemPlacement.confirmationAction.getter();
  v19 = a2;
  v20 = a3;
  v21 = a1;
  ToolbarItem<>.init(placement:content:)();
  swift_getWitnessTable();
  (*(v9 + 16))(v15, v13, v8);
  v16 = *(v9 + 8);
  v16(v13, v8);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (v16)(v15, v8);
}

uint64_t sub_1000CDFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SheetPresentationModifier();
  v11 = *(v6 + 16);
  v11(v9, a1 + *(v10 + 36), a2);
  v11(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_1000CE10C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000CEBE0(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
  return result;
}

unint64_t sub_1000CE1DC()
{
  result = qword_100158890;
  if (!qword_100158890)
  {
    sub_10003AECC(&qword_1001587F0, &qword_100113160);
    sub_10003AECC(&qword_1001587E0, &qword_100113150);
    sub_10003AECC(&qword_1001587D8, &qword_100113148);
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_10003AECC(&qword_1001587D0, &qword_100113140);
    sub_100004880(&qword_100158888, &qword_1001587D0, &qword_100113140);
    swift_getOpaqueTypeConformance2();
    sub_10001BAF0(&qword_100157818, sub_10001BB68);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158890);
  }

  return result;
}

uint64_t sub_1000CE3B4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000CE454@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE480(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

uint64_t sub_1000CE4AC@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000CE500@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE554@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE580(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_1000CE5AC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000CE5D8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_1000CE604@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000CE65C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100004880(&qword_1001588F8, &qword_1001588F0, &qword_100113308);
          for (i = 0; i != v6; ++i)
          {
            sub_10003AE84(&qword_1001588F0, &qword_100113308);
            v9 = sub_1000ADD1C(v13, i, a3);
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
        sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
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

uint64_t sub_1000CE810(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_10003AE84(&qword_1001588F0, &qword_100113308);
  sub_10003AE84(&qword_100158B28, &qword_1001134F0);
  sub_100004880(&qword_100158B30, &qword_1001588F0, &qword_100113308);
  sub_10003AECC(&qword_100158A40, &qword_1001133D0);
  sub_1000D02EC();
  swift_getOpaqueTypeConformance2();
  sub_1000D0570(&qword_100158B38, &qword_100155290, CalculateUnit_ptr);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000CE99C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_10003AE84(&qword_1001588F0, &qword_100113308);
  sub_10003AE84(&qword_100158B28, &qword_1001134F0);
  sub_100004880(&qword_100158B30, &qword_1001588F0, &qword_100113308);
  sub_10003AECC(&qword_100158A40, &qword_1001133D0);
  sub_1000D02EC();
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000CEB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConversionPopoverView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CEB6C()
{
  v1 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1000C1E78();
}

uint64_t sub_1000CEBE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CEC28(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000C2698(a1, a2, v6);
}

unint64_t sub_1000CECA8()
{
  result = qword_100158898;
  if (!qword_100158898)
  {
    sub_10003AECC(&qword_100158820, &qword_100113190);
    sub_1000CED34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158898);
  }

  return result;
}

unint64_t sub_1000CED34()
{
  result = qword_1001588A0;
  if (!qword_1001588A0)
  {
    sub_10003AECC(&qword_100158818, &qword_100113188);
    sub_1000CEDC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001588A0);
  }

  return result;
}

unint64_t sub_1000CEDC0()
{
  result = qword_1001588A8;
  if (!qword_1001588A8)
  {
    sub_10003AECC(&qword_100158810, &qword_100113180);
    sub_1000CEE78();
    sub_100004880(&qword_1001553D0, &qword_1001553D8, &unk_10010D250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001588A8);
  }

  return result;
}

unint64_t sub_1000CEE78()
{
  result = qword_1001588B0;
  if (!qword_1001588B0)
  {
    sub_10003AECC(&qword_100158808, &qword_100113178);
    sub_1000CEF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001588B0);
  }

  return result;
}

unint64_t sub_1000CEF04()
{
  result = qword_1001588B8;
  if (!qword_1001588B8)
  {
    sub_10003AECC(&qword_100158800, &qword_100113170);
    sub_10003AECC(&qword_1001587F0, &qword_100113160);
    sub_1000CE1DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001588B8);
  }

  return result;
}

uint64_t sub_1000CEFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000CF06C()
{
  result = qword_1001588E0;
  if (!qword_1001588E0)
  {
    sub_10003AECC(&qword_1001588C8, &qword_100113268);
    sub_100004880(&qword_100158348, &qword_100158350, &qword_100112900);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001588E0);
  }

  return result;
}

void sub_1000CF150(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_1000BEE1C(a1);
}

Swift::Int sub_1000CF204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003AE84(&qword_100154C58, &qword_100113970);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_1000CF36C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10003AE84(&qword_100158D18, &qword_100113760);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1000CEBE0(&qword_100158D20, &type metadata accessor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1000CEBE0(&qword_100158D28, &type metadata accessor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1000CF68C(uint64_t a1)
{
  v2 = type metadata accessor for KeyEquivalent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10003AE84(&qword_100158908, &qword_100113318);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1000CEBE0(&qword_100158910, &type metadata accessor for KeyEquivalent);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1000CEBE0(&qword_1001588E8, &type metadata accessor for KeyEquivalent);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_1000CF9AC()
{
  result = qword_100158948;
  if (!qword_100158948)
  {
    sub_10003AECC(&qword_100158940, &qword_100113348);
    sub_1000CFA38();
    sub_1000CFCEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158948);
  }

  return result;
}

unint64_t sub_1000CFA38()
{
  result = qword_100158950;
  if (!qword_100158950)
  {
    sub_10003AECC(&qword_100158958, &qword_100113350);
    sub_1000CFAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158950);
  }

  return result;
}

unint64_t sub_1000CFAC4()
{
  result = qword_100158960;
  if (!qword_100158960)
  {
    sub_10003AECC(&qword_100158968, &qword_100113358);
    sub_1000CFB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158960);
  }

  return result;
}

unint64_t sub_1000CFB50()
{
  result = qword_100158970;
  if (!qword_100158970)
  {
    sub_10003AECC(&qword_100158978, &qword_100113360);
    sub_1000CFC08();
    sub_100004880(&qword_1001581A0, &qword_1001581A8, &qword_100112778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158970);
  }

  return result;
}

unint64_t sub_1000CFC08()
{
  result = qword_100158980;
  if (!qword_100158980)
  {
    sub_10003AECC(&qword_100158988, &qword_100113368);
    sub_100004880(&qword_100158990, &qword_100158998, &unk_100113370);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158980);
  }

  return result;
}

unint64_t sub_1000CFCEC()
{
  result = qword_1001589A0;
  if (!qword_1001589A0)
  {
    sub_10003AECC(&qword_1001589A8, &qword_100113380);
    sub_100004880(&qword_1001589B0, &qword_1001589B8, &qword_100113388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001589A0);
  }

  return result;
}

unint64_t sub_1000CFDA4()
{
  result = qword_1001589D0;
  if (!qword_1001589D0)
  {
    sub_10003AECC(&qword_1001589C0, &qword_100113390);
    sub_10003AECC(&qword_1001589D8, &qword_1001133A0);
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_100004880(&qword_1001589E0, &qword_1001589D8, &qword_1001133A0);
    sub_10001BAF0(&qword_100157818, sub_10001BB68);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001589D0);
  }

  return result;
}

unint64_t sub_1000CFEFC()
{
  result = qword_1001589F0;
  if (!qword_1001589F0)
  {
    sub_10003AECC(&qword_1001589E8, &qword_1001133A8);
    sub_100004880(&qword_1001589F8, &qword_100158A00, &qword_1001133B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001589F0);
  }

  return result;
}

unint64_t sub_1000CFFB4()
{
  result = qword_100158A08;
  if (!qword_100158A08)
  {
    sub_10003AECC(&qword_100158938, &qword_100113340);
    sub_1000CF9AC();
    sub_10003AECC(&qword_1001589C0, &qword_100113390);
    sub_10003AECC(&qword_1001589C8, &qword_100113398);
    sub_1000CFDA4();
    sub_10003AECC(&qword_1001589E8, &qword_1001133A8);
    sub_1000CFEFC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158A08);
  }

  return result;
}

unint64_t sub_1000D00EC()
{
  result = qword_100158A10;
  if (!qword_100158A10)
  {
    sub_10003AECC(&qword_100158918, &qword_100113320);
    sub_10003AECC(&qword_100158A18, &qword_1001133B8);
    sub_100004880(&qword_100158A20, &qword_100158A18, &qword_1001133B8);
    swift_getOpaqueTypeConformance2();
    sub_1000CEBE0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158A10);
  }

  return result;
}

unint64_t sub_1000D022C()
{
  result = qword_100158A38;
  if (!qword_100158A38)
  {
    sub_10003AECC(&qword_100158A30, &qword_1001133C8);
    sub_10003AECC(&qword_100158A40, &qword_1001133D0);
    sub_1000D02EC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158A38);
  }

  return result;
}

unint64_t sub_1000D02EC()
{
  result = qword_100158A48;
  if (!qword_100158A48)
  {
    sub_10003AECC(&qword_100158A40, &qword_1001133D0);
    sub_10003AECC(&qword_100158A50, &qword_1001133D8);
    sub_1000D03E0();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100158A70, &qword_100158A78, &qword_1001133F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158A48);
  }

  return result;
}

unint64_t sub_1000D03E0()
{
  result = qword_100158A58;
  if (!qword_100158A58)
  {
    sub_10003AECC(&qword_100158A50, &qword_1001133D8);
    sub_100004880(&qword_100158A60, &qword_100158A68, &unk_1001133E0);
    sub_100004880(&qword_1001573C8, &qword_1001573D0, &qword_1001115F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158A58);
  }

  return result;
}

uint64_t sub_1000D04FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000D0570(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000050A0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D05B4()
{
  v1 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000CABAC((v0 + v2), v3);
}

uint64_t sub_1000D0640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1000C5AC0(a1, v6, v7, v8, a2);
}

uint64_t sub_1000D06CC@<X0>(void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  return sub_1000C66CC(*a1, a2, a3);
}

unint64_t sub_1000D0764()
{
  result = qword_100158B88;
  if (!qword_100158B88)
  {
    sub_10003AECC(&qword_100158B80, &qword_100113590);
    sub_10003AECC(&qword_100158B90, &qword_100113598);
    sub_1000D0824();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158B88);
  }

  return result;
}

unint64_t sub_1000D0824()
{
  result = qword_100158B98;
  if (!qword_100158B98)
  {
    sub_10003AECC(&qword_100158B90, &qword_100113598);
    sub_1000D08DC();
    sub_100004880(&qword_100158BD0, &qword_100158BD8, &qword_1001135B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158B98);
  }

  return result;
}

unint64_t sub_1000D08DC()
{
  result = qword_100158BA0;
  if (!qword_100158BA0)
  {
    sub_10003AECC(&qword_100158BA8, &qword_1001135A0);
    sub_1000D0968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158BA0);
  }

  return result;
}

unint64_t sub_1000D0968()
{
  result = qword_100158BB0;
  if (!qword_100158BB0)
  {
    sub_10003AECC(&qword_100158BB8, &qword_1001135A8);
    sub_100004880(&qword_100158BC0, &qword_100158BC8, &qword_1001135B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158BB0);
  }

  return result;
}

double sub_1000D0A20(uint64_t a1)
{
  v3 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000C78E0(a1, v4);
}

uint64_t sub_1000D0B10(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a3(v3 + v6, v3 + v9, v11, v12);
}

unint64_t sub_1000D0C30()
{
  result = qword_100158BE8;
  if (!qword_100158BE8)
  {
    sub_10003AECC(&qword_100158B60, &qword_100113548);
    sub_1000D0CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158BE8);
  }

  return result;
}

unint64_t sub_1000D0CBC()
{
  result = qword_100158BF0;
  if (!qword_100158BF0)
  {
    sub_10003AECC(&qword_100158BE0, &qword_1001135C0);
    sub_10003AECC(&qword_100158B58, &qword_100113540);
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_10003AECC(&qword_100158B50, &qword_100113538);
    sub_10003AECC(&qword_100158B80, &qword_100113590);
    sub_10003AECC(&qword_1001589D8, &qword_1001133A0);
    sub_10003AECC(&qword_100158B68, &qword_100113580);
    sub_100004880(&qword_1001589E0, &qword_1001589D8, &qword_1001133A0);
    sub_10003AECC(&qword_100158B70, &qword_100113588);
    sub_100004880(&qword_100158B78, &qword_100158B70, &qword_100113588);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000D0764();
    swift_getOpaqueTypeConformance2();
    sub_10001BAF0(&qword_100157818, sub_10001BB68);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158BF0);
  }

  return result;
}

unint64_t sub_1000D0F40()
{
  result = qword_100158C78;
  if (!qword_100158C78)
  {
    sub_10003AECC(&qword_100158C68, &unk_100113668);
    sub_10003AECC(&qword_100158C48, &qword_100113640);
    type metadata accessor for PlainButtonStyle();
    sub_100004880(&qword_100158C80, &qword_100158C48, &qword_100113640);
    sub_1000CEBE0(&qword_100154770, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000D108C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158C78);
  }

  return result;
}

unint64_t sub_1000D108C()
{
  result = qword_100158C88;
  if (!qword_100158C88)
  {
    sub_10003AECC(&qword_100158C60, &unk_100113658);
    sub_1000D1144();
    sub_100004880(&qword_1001569A8, &qword_1001569B0, &qword_10010FC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158C88);
  }

  return result;
}

unint64_t sub_1000D1144()
{
  result = qword_100158C90;
  if (!qword_100158C90)
  {
    sub_10003AECC(&qword_100158C98, &qword_100113680);
    sub_1000D1200();
    sub_1000CEBE0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158C90);
  }

  return result;
}

unint64_t sub_1000D1200()
{
  result = qword_100158CA0;
  if (!qword_100158CA0)
  {
    sub_10003AECC(&qword_100158CA8, &qword_100113688);
    sub_1000B6F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CA0);
  }

  return result;
}

unint64_t sub_1000D128C()
{
  result = qword_100158CB0;
  if (!qword_100158CB0)
  {
    sub_10003AECC(&qword_100158C38, &qword_100113630);
    sub_1000D108C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CB0);
  }

  return result;
}

unint64_t sub_1000D1318()
{
  result = qword_100158CD0;
  if (!qword_100158CD0)
  {
    sub_10003AECC(&qword_100158C18, &qword_100113608);
    sub_1000D13D0();
    sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CD0);
  }

  return result;
}

unint64_t sub_1000D13D0()
{
  result = qword_100158CD8;
  if (!qword_100158CD8)
  {
    sub_10003AECC(&qword_100158CC8, &unk_1001136D8);
    sub_1000D1488();
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CD8);
  }

  return result;
}

unint64_t sub_1000D1488()
{
  result = qword_100158CE0;
  if (!qword_100158CE0)
  {
    sub_10003AECC(&qword_100158CC0, &qword_1001136D0);
    sub_1000D1540();
    sub_100004880(&qword_1001569A8, &qword_1001569B0, &qword_10010FC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CE0);
  }

  return result;
}

unint64_t sub_1000D1540()
{
  result = qword_100158CE8;
  if (!qword_100158CE8)
  {
    sub_10003AECC(&qword_100158B18, &qword_1001134E0);
    sub_1000CEBE0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158CE8);
  }

  return result;
}

unint64_t sub_1000D15FC()
{
  result = qword_100158D00;
  if (!qword_100158D00)
  {
    sub_10003AECC(&qword_100158C20, &qword_100113610);
    sub_1000D16B4();
    sub_100004880(&qword_1001584D8, &qword_1001584E0, &qword_100112E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158D00);
  }

  return result;
}

unint64_t sub_1000D16B4()
{
  result = qword_100158D08;
  if (!qword_100158D08)
  {
    sub_10003AECC(&qword_100158CF8, &qword_100113720);
    sub_1000D1740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158D08);
  }

  return result;
}

unint64_t sub_1000D1740()
{
  result = qword_100158D10;
  if (!qword_100158D10)
  {
    sub_10003AECC(&qword_100158CF0, &qword_100113718);
    sub_10003AECC(&qword_100158C18, &qword_100113608);
    sub_1000D1318();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001581A0, &qword_1001581A8, &qword_100112778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158D10);
  }

  return result;
}

uint64_t sub_1000D1834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1000CCEF8(a1);
}

uint64_t sub_1000D1840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000C3108(a1, v6, a2);
}

unint64_t sub_1000D18C8()
{
  result = qword_100158DA0;
  if (!qword_100158DA0)
  {
    sub_10003AECC(&qword_100158D98, &qword_1001137C8);
    sub_1000D1954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158DA0);
  }

  return result;
}

unint64_t sub_1000D1954()
{
  result = qword_100158DA8;
  if (!qword_100158DA8)
  {
    sub_10003AECC(&qword_100158DB0, &qword_1001137D0);
    sub_100004880(&qword_100158DB8, &qword_100158DC0, &qword_1001137D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158DA8);
  }

  return result;
}

unint64_t sub_1000D1A10()
{
  result = qword_100158DD8;
  if (!qword_100158DD8)
  {
    sub_10003AECC(&qword_100158D88, &qword_1001137B8);
    sub_10003AECC(&qword_100158D78, &qword_1001137A8);
    sub_10003AECC(&qword_100158D70, &qword_1001137A0);
    sub_10003AECC(&qword_100158D68, &qword_100113798);
    sub_10003AECC(&qword_100158D60, &qword_100113790);
    sub_10003AECC(&qword_100156AB0, &qword_1001102B0);
    sub_100004880(&qword_100158DC8, &qword_100158D60, &qword_100113790);
    sub_10001BAF0(&qword_100157818, sub_10001BB68);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_100158DE0, &qword_100158DE8, &qword_1001137E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158DD8);
  }

  return result;
}

uint64_t sub_1000D1C50()
{
  v1 = *(type metadata accessor for ScrollViewProxy() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  return sub_1000C491C(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

unint64_t sub_1000D1D18()
{
  result = qword_100158E10;
  if (!qword_100158E10)
  {
    sub_10003AECC(&qword_100158E08, &qword_100113800);
    sub_100004880(&qword_100158E18, &qword_100158E20, &qword_100113808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158E10);
  }

  return result;
}

uint64_t sub_1000D1DC8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000C4504(a1, v6, a2);
}

uint64_t sub_1000D1E48()
{
  v1 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000C47FC(v2, v3);
}

uint64_t sub_1000D1EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D1F18(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_1000D1F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1000C8C3C(a1, v6, v7, a2);
}

uint64_t sub_1000D1FEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000C9054();
}

uint64_t sub_1000D1FF4()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UnitConversionPopoverView();
  v6 = *(*(v5 - 1) + 80);
  v32 = *(*(v5 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = (v0 + ((v3 + v4 + v6) & ~v6));
  v8 = *v7;

  v9 = *(v7 + 2);

  v10 = *(v7 + 4);

  v11 = *(v7 + 6);

  v12 = *(v7 + 7);

  v13 = v5[9];
  v14 = type metadata accessor for UserInterfaceSizeClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (!v16(&v7[v13], 1, v14))
  {
    (*(v15 + 8))(&v7[v13], v14);
  }

  v17 = v5[10];
  if (!v16(&v7[v17], 1, v14))
  {
    (*(v15 + 8))(&v7[v17], v14);
  }

  v18 = &v7[v5[11]];
  v19 = *(v18 + 1);

  v20 = *(v18 + 2);

  v21 = &v7[v5[12]];
  v22 = *(v21 + 1);

  v23 = *(v21 + 2);

  v24 = *&v7[v5[13] + 8];

  v25 = &v7[v5[14]];
  v26 = *(v25 + 1);

  v27 = *(v25 + 2);

  v28 = v5[15];
  v29 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v30 = *(*(v29 - 8) + 8);
  v30(&v7[v28], v29);
  v30(&v7[v5[16]], v29);
  v30(&v7[v5[17]], v29);
  v30(&v7[v5[18]], v29);
  v30(&v7[v5[19]], v29);
  v30(&v7[v5[20]], v29);

  return swift_deallocObject();
}

uint64_t sub_1000D2330()
{
  v1 = *(type metadata accessor for ScrollViewProxy() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000CA30C(v0 + v2, v5);
}

unint64_t sub_1000D2404()
{
  result = qword_100158E78;
  if (!qword_100158E78)
  {
    sub_10003AECC(&qword_100158E70, &qword_100113840);
    sub_10003AECC(&qword_100158E80, &qword_100113848);
    sub_10003AECC(&qword_100158E88, &qword_100113850);
    sub_1000D2538();
    sub_100004880(&qword_100158EB8, &qword_100158E88, &qword_100113850);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158E78);
  }

  return result;
}

unint64_t sub_1000D2538()
{
  result = qword_100158E90;
  if (!qword_100158E90)
  {
    sub_10003AECC(&qword_100158E80, &qword_100113848);
    sub_1000D25C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158E90);
  }

  return result;
}

unint64_t sub_1000D25C4()
{
  result = qword_100158E98;
  if (!qword_100158E98)
  {
    sub_10003AECC(&qword_100158EA0, &qword_100113858);
    sub_1000D2650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158E98);
  }

  return result;
}

unint64_t sub_1000D2650()
{
  result = qword_100158EA8;
  if (!qword_100158EA8)
  {
    sub_10003AECC(&qword_100158EB0, &unk_100113860);
    sub_10008C7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158EA8);
  }

  return result;
}

uint64_t sub_1000D26DC(unint64_t *a1)
{
  v3 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);

  return sub_1000C93F8(a1, v6, v1 + v4, v5);
}

unint64_t sub_1000D278C()
{
  result = qword_100158ED0;
  if (!qword_100158ED0)
  {
    sub_10003AECC(&qword_100158EC0, &qword_100113888);
    sub_1000D2818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158ED0);
  }

  return result;
}

unint64_t sub_1000D2818()
{
  result = qword_100158ED8;
  if (!qword_100158ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158ED8);
  }

  return result;
}

unint64_t sub_1000D28B4()
{
  result = qword_100158EF0;
  if (!qword_100158EF0)
  {
    sub_10003AECC(&qword_100158EE8, &qword_1001138A0);
    sub_1000D2938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158EF0);
  }

  return result;
}

unint64_t sub_1000D2938()
{
  result = qword_100158EF8;
  if (!qword_100158EF8)
  {
    sub_10003AECC(&qword_100158F00, &qword_1001138A8);
    sub_1000D29C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158EF8);
  }

  return result;
}

unint64_t sub_1000D29C4()
{
  result = qword_100158F08;
  if (!qword_100158F08)
  {
    sub_10003AECC(&qword_100158F10, &qword_1001138B0);
    sub_1000D2A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158F08);
  }

  return result;
}

unint64_t sub_1000D2A50()
{
  result = qword_100158F18;
  if (!qword_100158F18)
  {
    sub_10003AECC(&qword_100158F20, &qword_1001138B8);
    sub_100004880(&qword_100158F28, &qword_100158F30, &qword_1001138C0);
    sub_100004880(&qword_1001553D0, &qword_1001553D8, &unk_10010D250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158F18);
  }

  return result;
}

uint64_t sub_1000D2B34@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnitConversionPopoverView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + v7);
  v12 = *(v2 + v8);
  v13 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000C9A10(a1, v10, v2 + v6, v11, v12, v13, a2);
}

void sub_1000D2C04(uint64_t a1)
{
  sub_100013F2C(319, &qword_1001549C8, &type metadata accessor for UserInterfaceSizeClass, &type metadata accessor for Optional);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D2CBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
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
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v8)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v16 + v14;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v18 = (v17 & ~v14) + v15;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((a2 - v12 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v21 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v9 >= v11)
        {
          v27 = (*(v7 + 48))(a1);
          if (v27 >= 2)
          {
            return v27 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v25 = *(*(*(a3 + 16) - 8) + 48);

          return v25((a1 + v17) & ~v14, v11);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_33;
  }

LABEL_20:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void sub_1000D2F00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
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
  v15 = *(v9 + 64);
  v16 = *(v13 + 80);
  if (v14 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (v11)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  v19 = ((v18 + v16) & ~v16) + *(v13 + 64);
  if (a3 <= v17)
  {
    goto LABEL_21;
  }

  if (v19 <= 3)
  {
    v20 = ((a3 - v17 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v20))
    {
      v8 = 4;
      if (v17 >= a2)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v8 = v21;
    }

    else
    {
      v8 = 0;
    }

LABEL_21:
    if (v17 >= a2)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  v8 = 1;
  if (v17 >= a2)
  {
LABEL_31:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v19] = 0;
    }

    else if (v8)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v12 >= v14)
      {
        if (v12 >= a2)
        {
          v29 = *(v10 + 56);

          v29(a1, (a2 + 1));
        }

        else
        {
          if (v18 <= 3)
          {
            v26 = ~(-1 << (8 * v18));
          }

          else
          {
            v26 = -1;
          }

          if (v18)
          {
            v27 = v26 & (~v12 + a2);
            if (v18 <= 3)
            {
              v28 = v18;
            }

            else
            {
              v28 = 4;
            }

            bzero(a1, v18);
            if (v28 > 2)
            {
              if (v28 == 3)
              {
                *a1 = v27;
                a1[2] = BYTE2(v27);
              }

              else
              {
                *a1 = v27;
              }
            }

            else if (v28 == 1)
            {
              *a1 = v27;
            }

            else
            {
              *a1 = v27;
            }
          }
        }
      }

      else
      {
        v25 = *(v13 + 56);

        v25(&a1[v18 + v16] & ~v16, a2, v14);
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

LABEL_22:
  v22 = ~v17 + a2;
  if (v19 >= 4)
  {
    bzero(a1, v19);
    *a1 = v22;
    v23 = 1;
    if (v8 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v23 = (v22 >> (8 * v19)) + 1;
  if (!v19)
  {
LABEL_59:
    if (v8 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v24 = v22 & ~(-1 << (8 * v19));
  bzero(a1, v19);
  if (v19 == 3)
  {
    *a1 = v24;
    a1[2] = BYTE2(v24);
    goto LABEL_59;
  }

  if (v19 == 2)
  {
    *a1 = v24;
    if (v8 > 1)
    {
LABEL_63:
      if (v8 == 2)
      {
        *&a1[v19] = v23;
      }

      else
      {
        *&a1[v19] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v8 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v8)
  {
    a1[v19] = v23;
  }
}

void *sub_1000D32D8(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10003AE84(&qword_100158FE0, &qword_100113978);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1000CEBE0(&qword_100158FE8, &type metadata accessor for PresentationDetent);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1000CEBE0(&qword_100158FF0, &type metadata accessor for PresentationDetent);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000D363C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000D3684(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000D36D0(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 8);
  v13 = *a2;
  v9 = v14;

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D3848(&v13);
    (*(v5 + 8))(v8, v4);
  }

  sub_1000604CC(a1, a2[3]);
}

uint64_t sub_1000D3848(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100154810, &qword_10010DF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000D38B0(uint64_t a1, uint64_t a2)
{
  if (!sub_100018480())
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4)
    {
      v5 = [objc_opt_self() mainScreen];
      [v5 bounds];

      sub_10003C664();
    }

    else
    {
      sub_10003D380(a2);
    }
  }
}

void sub_1000D399C(uint64_t a1, char a2, uint64_t a3)
{
  if ((sub_10003D380(a3) & 1) == 0)
  {
    v6 = [objc_opt_self() currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 || (sub_10003CC9C(a3) & 1) == 0)
    {
      if (a2)
      {
        swift_getKeyPath();
        sub_10001EC3C();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v8 = *(a1 + 96);
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (v8 / *(a1 + 104) <= 0.98)
        {
          v9 = 0.111111111;
        }

        else
        {
          v9 = 0.125;
        }
      }

      else if (sub_10003C9A0(a3))
      {
        v9 = 0.0769230769;
      }

      else
      {
        v9 = 0.125;
      }

      swift_getKeyPath();
      sub_10001EC3C();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = v9 * *(a1 + 104);
      sub_10003DAD4();
    }
  }
}

double sub_1000D3BAC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = sub_10003C9A0(a3);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  result = 61.0;
  v8 = 45.0;
  if (v4)
  {
    result = 45.0;
    v8 = 22.0;
  }

  if ((a2 & 1) == 0)
  {
    result = v8;
  }

  if (!v6)
  {
    return 28.0;
  }

  return result;
}

double sub_1000D3C58(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_getKeyPath();
    sub_10001EC3C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(a1 + 96);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = dbl_100113AA0[v4 / *(a1 + 104) > 0.98];
  }

  else if (sub_10003C9A0(a3))
  {
    v5 = 0.153846154;
  }

  else
  {
    v5 = 0.25;
  }

  swift_getKeyPath();
  sub_10001EC3C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return v5 * *(a1 + 104);
}

void sub_1000D3DA0(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    swift_getKeyPath();
    sub_10001EC3C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(a1 + 96);
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
  }
}

void sub_1000D3EAC(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    swift_getKeyPath();
    sub_10001EC3C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(a1 + 104);
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
  }
}

void sub_1000D3FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_10003D380(a3) & 1) == 0)
  {
    sub_10001EB88();
    swift_getKeyPath();
    sub_10001EC3C();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(a1 + 104);
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
  }
}

uint64_t sub_1000D40BC()
{
  v0 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1)
  {
    v7 = [v4 currentDevice];
    [v7 userInterfaceIdiom];
  }

  static Font.Weight.regular.getter();
  v8 = type metadata accessor for Font.Design();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = static Font.system(size:weight:design:)();
  sub_1000D4254(v3);
  return v9;
}

uint64_t sub_1000D4254(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for UnitConversionUnitButton()
{
  result = qword_100159058;
  if (!qword_100159058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D4330()
{
  sub_10001B8B8();
  if (v0 <= 0x3F)
  {
    sub_100010420();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D4408@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = type metadata accessor for AttributeContainer();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlainButtonStyle();
  v9 = *(v8 - 8);
  v52 = v8;
  v53 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UnitConversionUnitButton();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = sub_10003AE84(&qword_1001590C0, &qword_100113B90);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  v50 = sub_10003AE84(&qword_1001590C8, &qword_100113B98);
  v21 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v23 = &v49 - v22;
  v57 = sub_10003AE84(&qword_1001590D0, &qword_100113BA0);
  v24 = *(*(v57 - 8) + 64);
  v25 = __chkstk_darwin(v57);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v51 = &v49 - v29;
  __chkstk_darwin(v28);
  v58 = &v49 - v30;
  sub_1000D5334(v1, &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v32 = swift_allocObject();
  sub_1000D5398(&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  v59 = v1;
  sub_10003AE84(&qword_1001590D8, &qword_100113BA8);
  sub_1000D5468();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100004880(&qword_100159118, &qword_1001590C0, &qword_100113B90);
  sub_1000D5BA0(&qword_100154770, &type metadata accessor for PlainButtonStyle);
  v33 = v52;
  View.buttonStyle<A>(_:)();
  (*(v53 + 8))(v12, v33);
  (*(v17 + 8))(v20, v16);
  KeyPath = swift_getKeyPath();
  v35 = &v23[*(sub_10003AE84(&qword_100159120, &qword_100113C00) + 36)];
  *v35 = KeyPath;
  v35[1] = 0x3FB999999999999ALL;
  v36 = swift_getKeyPath();
  v37 = &v23[*(v50 + 36)];
  *v37 = v36;
  *(v37 + 1) = 2;
  v37[16] = 0;
  countAndFlagsBits = v1->_countAndFlagsBits;
  object = v1->_object;
  sub_1000D5664();
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v23, &qword_1001590C8, &qword_100113B98);
  v60 = countAndFlagsBits;
  v61 = object;
  sub_10006345C();
  v40 = v51;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_1000035CC(v27, &qword_1001590D0, &qword_100113BA0);
  v60 = countAndFlagsBits;
  v61 = object;

  v41._countAndFlagsBits = 10272;
  v41._object = 0xE200000000000000;
  String.append(_:)(v41);
  String.append(_:)(v1[1]);
  v42._countAndFlagsBits = 41;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)();

  sub_1000035CC(v40, &qword_1001590D0, &qword_100113BA0);
  LocalizedStringKey.init(stringLiteral:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  LOBYTE(v60) = 1;
  sub_1000D5894();
  AttributedString.subscript.setter();
  v43 = Text.init(_:)();
  v45 = v44;
  LOBYTE(v16) = v46;
  v47 = v58;
  ModifiedContent<>.accessibilityCustomContent(_:_:importance:)();
  sub_10000C6AC(v43, v45, v16 & 1);

  return sub_1000035CC(v47, &qword_1001590D0, &qword_100113BA0);
}

uint64_t sub_1000D4B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003AE84(&qword_100159100, &qword_100113BB8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v23[-v7];
  v9 = sub_10003AE84(&qword_1001590F0, &qword_100113BB0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v23[-v12];
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v14 = sub_10003AE84(&qword_100159140, &qword_100113C38);
  sub_1000D4D80(a1, &v8[*(v14 + 44)]);
  v15 = *(type metadata accessor for UnitConversionUnitButton() + 56);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = &v8[*(v5 + 44)];
  v17 = v24;
  *v16 = *&v23[8];
  v16[1] = v17;
  v16[2] = v25;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000D5B8(v8, v13, &qword_100159100, &qword_100113BB8);
  v18 = &v13[*(v10 + 44)];
  v19 = v31;
  v18[4] = v30;
  v18[5] = v19;
  v18[6] = v32;
  v20 = v27;
  *v18 = v26;
  v18[1] = v20;
  v21 = v29;
  v18[2] = v28;
  v18[3] = v21;
  sub_10000D5B8(v13, a2, &qword_1001590F0, &qword_100113BB0);
  result = sub_10003AE84(&qword_1001590D8, &qword_100113BA8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1000D4D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_10003AE84(&qword_100159148, &qword_100113C40);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  if (qword_1001543F8 != -1)
  {
    swift_once();
  }

  v9 = qword_100160930;
  v10 = *(a1 + 88);
  KeyPath = swift_getKeyPath();
  v12 = *(a1 + 64);

  v13 = Font.bold()();
  v14 = swift_getKeyPath();
  v15 = 0.0;
  if (*(a1 + 32))
  {
    v15 = 1.0;
  }

  v33 = v9;
  v34 = KeyPath;
  *v35 = v10;
  *&v35[8] = v14;
  *&v35[16] = v13;
  *&v35[24] = v15;
  sub_10003AE84(&qword_100159150, &qword_100113CA8);
  sub_1000D58E8();
  View.accessibilityHidden(_:)();

  v16 = static HorizontalAlignment.leading.getter();
  LOBYTE(v33) = 0;
  sub_1000D50A0(a1, v30);
  *&v29[7] = v30[0];
  *&v29[23] = v30[1];
  *&v29[39] = v30[2];
  *&v29[55] = v30[3];
  v17 = v33;
  v18 = v28;
  sub_100008E68(v8, v28, &qword_100159148, &qword_100113C40);
  v19 = v27;
  sub_100008E68(v18, v27, &qword_100159148, &qword_100113C40);
  v20 = v19 + *(sub_10003AE84(&qword_100159180, &qword_100113CC0) + 48);
  v31[0] = v16;
  v31[1] = 0;
  v32[0] = v17;
  *&v32[1] = *v29;
  *&v32[17] = *&v29[16];
  *&v32[33] = *&v29[32];
  *&v32[49] = *&v29[48];
  v21 = *&v29[63];
  *&v32[64] = *&v29[63];
  v22 = *v32;
  *v20 = v16;
  *(v20 + 16) = v22;
  v23 = *&v32[16];
  v24 = *&v32[32];
  v25 = *&v32[48];
  *(v20 + 80) = v21;
  *(v20 + 48) = v24;
  *(v20 + 64) = v25;
  *(v20 + 32) = v23;
  sub_100008E68(v31, &v33, &qword_100159188, qword_100113CC8);
  sub_1000035CC(v8, &qword_100159148, &qword_100113C40);
  v33 = v16;
  v34 = 0;
  v35[0] = v17;
  *&v35[17] = *&v29[16];
  v36 = *&v29[32];
  *v37 = *&v29[48];
  *&v37[15] = *&v29[63];
  *&v35[1] = *v29;
  sub_1000035CC(&v33, &qword_100159188, qword_100113CC8);
  return sub_1000035CC(v18, &qword_100159148, &qword_100113C40);
}

uint64_t sub_1000D50A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = *a1;
  v47 = a1[1];
  sub_10006345C();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v8 = 9;
  if (*(a1 + 32))
  {
    v8 = 11;
  }

  v9 = a1[v8];
  v10 = 80;
  if (*(a1 + 32))
  {
    v10 = 88;
  }

  v39 = v10;

  v11 = Text.foregroundColor(_:)();
  v13 = v12;
  v15 = v14;

  sub_10000C6AC(v3, v5, v7 & 1);

  v16 = a1[7];
  v17 = Text.font(_:)();
  v42 = v18;
  v43 = v17;
  v41 = v19;
  v40 = v20;
  sub_10000C6AC(v11, v13, v15 & 1);

  v46 = a1[2];
  v48 = a1[3];

  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(v13) = v24;
  v25 = *(a1 + v39);

  v26 = Text.foregroundColor(_:)();
  v28 = v27;
  v30 = v29;

  sub_10000C6AC(v21, v23, v13 & 1);

  v31 = a1[8];
  v32 = Text.font(_:)();
  v34 = v33;
  LOBYTE(v23) = v35;
  v37 = v36;
  sub_10000C6AC(v26, v28, v30 & 1);

  *a2 = v43;
  *(a2 + 8) = v41;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = v32;
  *(a2 + 40) = v34;
  *(a2 + 48) = v23 & 1;
  *(a2 + 56) = v37;
  sub_10006564C(v43, v41, v40 & 1);

  sub_10006564C(v32, v34, v23 & 1);

  sub_10000C6AC(v32, v34, v23 & 1);

  sub_10000C6AC(v43, v41, v40 & 1);
}

uint64_t sub_1000D5334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConversionUnitButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D5398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConversionUnitButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D53FC()
{
  v1 = *(type metadata accessor for UnitConversionUnitButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 48);
  return (*(v2 + 40))();
}

unint64_t sub_1000D5468()
{
  result = qword_1001590E0;
  if (!qword_1001590E0)
  {
    sub_10003AECC(&qword_1001590D8, &qword_100113BA8);
    sub_1000D5520();
    sub_100004880(&qword_1001553E0, &qword_1001553E8, &qword_10010FA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001590E0);
  }

  return result;
}

unint64_t sub_1000D5520()
{
  result = qword_1001590E8;
  if (!qword_1001590E8)
  {
    sub_10003AECC(&qword_1001590F0, &qword_100113BB0);
    sub_1000D55AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001590E8);
  }

  return result;
}

unint64_t sub_1000D55AC()
{
  result = qword_1001590F8;
  if (!qword_1001590F8)
  {
    sub_10003AECC(&qword_100159100, &qword_100113BB8);
    sub_100004880(&qword_100159108, &qword_100159110, &unk_100113BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001590F8);
  }

  return result;
}

unint64_t sub_1000D5664()
{
  result = qword_100159128;
  if (!qword_100159128)
  {
    sub_10003AECC(&qword_1001590C8, &qword_100113B98);
    sub_1000D571C();
    sub_100004880(&qword_1001569B8, &qword_1001569C0, &qword_10010FC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159128);
  }

  return result;
}

unint64_t sub_1000D571C()
{
  result = qword_100159130;
  if (!qword_100159130)
  {
    sub_10003AECC(&qword_100159120, &qword_100113C00);
    sub_10003AECC(&qword_1001590C0, &qword_100113B90);
    type metadata accessor for PlainButtonStyle();
    sub_100004880(&qword_100159118, &qword_1001590C0, &qword_100113B90);
    sub_1000D5BA0(&qword_100154770, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001584D8, &qword_1001584E0, &qword_100112E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159130);
  }

  return result;
}

unint64_t sub_1000D5894()
{
  result = qword_100159138;
  if (!qword_100159138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159138);
  }

  return result;
}

unint64_t sub_1000D58E8()
{
  result = qword_100159158;
  if (!qword_100159158)
  {
    sub_10003AECC(&qword_100159150, &qword_100113CA8);
    sub_1000D5974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159158);
  }

  return result;
}

unint64_t sub_1000D5974()
{
  result = qword_100159160;
  if (!qword_100159160)
  {
    sub_10003AECC(&qword_100159168, &qword_100113CB0);
    sub_1000D5A2C();
    sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159160);
  }

  return result;
}

unint64_t sub_1000D5A2C()
{
  result = qword_100159170;
  if (!qword_100159170)
  {
    sub_10003AECC(&qword_100159178, &qword_100113CB8);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159170);
  }

  return result;
}

unint64_t sub_1000D5AE4()
{
  result = qword_100159190;
  if (!qword_100159190)
  {
    sub_10003AECC(&qword_1001590D0, &qword_100113BA0);
    sub_1000D5664();
    sub_1000D5BA0(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159190);
  }

  return result;
}

uint64_t sub_1000D5BA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D5BE8()
{
  sub_100023C6C();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000D5C5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000D5CA4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000D5D10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {

    v5._countAndFlagsBits = 32;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    v6 = [a4 displayName];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);
  }

  else
  {
  }

  sub_10003AE84(&qword_1001591A8, &unk_100113E20);
  sub_1000D5E4C();
  sub_10006345C();
  View.help<A>(_:)();
}

unint64_t sub_1000D5E4C()
{
  result = qword_1001591B0;
  if (!qword_1001591B0)
  {
    sub_10003AECC(&qword_1001591A8, &unk_100113E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001591B0);
  }

  return result;
}

uint64_t sub_1000D5EB0()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 41);
}

uint64_t sub_1000D5F50()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
}

uint64_t sub_1000D5FF4()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
}

uint64_t sub_1000D6098(char a1)
{
  sub_10001B0D8();

  v3 = CalculateExpression.activeError.getter();

  if (v3 || (sub_1000DBEAC(), , v4 = CalculateExpression.activeError.getter(), , v4))
  {
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      sub_1000DBEAC();

      sub_10001B0D8();

      CalculateExpression.expression.getter();

      CalculateExpression.expression.setter();
    }

    sub_10001B0D8();

    CalculateExpression.inlineEvaluate()();

    swift_getKeyPath();
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v1 + 41) & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void sub_1000D62AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalculateExpression.Base();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v40 = v1;
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1[40] == 1)
  {
    v12 = sub_100072148();
  }

  else
  {
    v12 = sub_100072328();
  }

  v13 = v12;
  swift_getKeyPath();
  v40 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1[40] == 1)
  {
    v14 = sub_100072328();
  }

  else
  {
    v14 = sub_100072148();
  }

  v15 = v14;
  swift_getKeyPath();
  v40 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((v1[43] & 1) == 0)
  {
    swift_getKeyPath();
    v40 = a1;
    sub_100018364(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ([*(a1 + 32) unitType] == 16)
    {
      type metadata accessor for StocksKitCurrencyCache();
      if (static StocksKitCurrencyCache.isEnabled.getter())
      {
        v16 = static StocksKitCurrencyCache.shared.getter();
        v17 = dispatch thunk of StocksKitCurrencyCache.needsRefresh.getter();

        v18 = &unk_100113FA8;
        if ((v17 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v32 = [objc_opt_self() shared];
      v33 = [v32 needsRefresh];

      v18 = &unk_100113FA0;
      if (v33)
      {
LABEL_11:
        sub_1000D9540(v18, 0, v2);
      }
    }
  }

LABEL_12:
  sub_10001B0D8();

  v19 = CalculateExpression.result.getter();

  if (v19)
  {
    v20 = v11;
    v35[1] = v7;

    sub_10001B0D8();

    v21 = CalculateExpression.expression.getter();
    v23 = v22;

    v24 = v13;
    v25 = v13;
    v26 = v15;
    v27 = sub_1000D8E8C(v21, v23, 1, v24, v15);

    v36 = v25;

    v37 = v26;
    if (v27)
    {
      sub_1000DBEAC();
      type metadata accessor for CalculateExpression();
      v35[0] = v27;

      sub_1000DBEAC();

      CalculateExpression.options.getter();

      (*(v38 + 104))(v20, enum case for CalculateExpression.Base.base10(_:), v39);
      UUID.init()();
      CalculateExpression.__allocating_init(result:error:options:base:id:)();
      CalculateExpression.inlineEvaluate(_:)();

      sub_10001B0D8();

      v28 = CalculateExpression.result.getter();

      if (v28)
      {
        v29 = [v28 isPartialExpression];
      }

      else
      {
        v29 = 0;
      }

      swift_getKeyPath();
      v40 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v29 != v2[42])
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v35[-2] = v2;
        LOBYTE(v35[-1]) = v29;
        v40 = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    else
    {
      swift_getKeyPath();
      v40 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v2[42] != 1)
      {
        v34 = swift_getKeyPath();
        __chkstk_darwin(v34);
        v35[-2] = v2;
        LOBYTE(v35[-1]) = 1;
        v40 = v2;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  else
  {
    sub_1000DBEAC();

    sub_10001B0D8();

    CalculateExpression.inlineEvaluate(_:)();

    swift_getKeyPath();
    v40 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v2[42])
    {
      v30 = swift_getKeyPath();
      __chkstk_darwin(v30);
      v35[-2] = v2;
      LOBYTE(v35[-1]) = 0;
      v40 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_1000D6A68()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

void sub_1000D6B08(uint64_t a1, char a2)
{
  v3 = v2;
  v52 = 0;
  v6 = type metadata accessor for AccessibilityNotification.Announcement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributeContainer();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for AttributedString();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v47 - v20;
  if ((a2 & 1) == 0)
  {
    if (a1 == 1)
    {
      sub_10001B0D8();

      CalculateExpression.clearAll()();

      sub_1000DBEAC();

      CalculateExpression.clearAll()();

      swift_getKeyPath();
      v53 = v3;
      sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v3 + 41) == 1)
      {
LABEL_8:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v47[-2] = v3;
        LOBYTE(v47[-1]) = 0;
        v53 = v3;
        v23 = v52;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v52 = v23;
      }

LABEL_9:
      swift_getKeyPath();
      v53 = v3;
      sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v3 + 41) == 1)
      {
        if (a1 > 0x2Fu || ((1 << a1) & 0x800017000000) == 0 && (a1 != 27 || (swift_getKeyPath(), v53 = v3, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v3 + 48))))
        {
          swift_getKeyPath();
          v53 = v3;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v3 + 41) == 1)
          {
            v24 = swift_getKeyPath();
            __chkstk_darwin(v24);
            v47[-2] = v3;
            LOBYTE(v47[-1]) = 0;
            v53 = v3;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }
        }
      }

      return;
    }

    if ((a1 & 0xFC) == 0x18)
    {
      if (a1 > 0x19u)
      {
        if (a1 == 27)
        {
          swift_getKeyPath();
          v53 = v3;
          sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v33 = *(v3 + 48);
          if (v33)
          {
            v34 = v33;
            sub_10001B0D8();
            type metadata accessor for CalculateExpression.CustomOperandOperation();
            v35 = v34;

            CalculateExpression.CustomOperandOperation.__allocating_init(_:)();
            CalculateExpression.update(_:)();
          }

          goto LABEL_9;
        }
      }

      else if (a1 == 24)
      {
        if (*(v3 + 48))
        {
          v25 = swift_getKeyPath();
          __chkstk_darwin(v25);
          v47[-2] = v3;
          v47[-1] = 0;
          v53 = v3;
          sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
          v26 = v52;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          v52 = v26;
        }

        goto LABEL_9;
      }

      sub_10001B0D8();

      CalculateExpression.inlineEvaluate()();

      sub_1000D88D8();
      goto LABEL_9;
    }

    v48 = v19;
    v51 = a1;
    v27 = sub_100025E90(a1);
    if (!v27)
    {
      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000048C8(v36, qword_100160D38);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v51;
      if (v39)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v53 = v42;
        *v41 = 136315138;
        sub_10007DBB4(v40);
        v45 = sub_100006E5C(v43, v44, &v53);

        *(v41 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v37, v38, "Error Unrecognized calculator button pressed: %s", v41, 0xCu);
        sub_100003F80(v42);
      }

      goto LABEL_40;
    }

    v28 = v27;
    sub_10001B0D8();

    v50 = CalculateExpression.update(_:)();

    sub_10001B0D8();
    v49 = v28;

    v29 = CalculateExpression.removed.getter();

    if (v29)
    {
      v30 = dispatch thunk of CalculateExpression.RichExpression.tokens.getter();

      if (v30 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_25;
        }
      }

      else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        sub_1000D8C40(v30);
        v47[1] = v31;

        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v53 = 0xBFF0000000000000;
        v54 = 0;
        sub_1000DC384();
        AttributedString.subscript.setter();
        v32 = v48;
        (*(v14 + 16))(v18, v21, v48);
        AccessibilityNotification.Announcement.init(_:)();
        _AccessibilityNotifications.post()();

        (*(v7 + 8))(v10, v6);
        (*(v14 + 8))(v21, v32);
        goto LABEL_39;
      }
    }

LABEL_39:
    LOBYTE(a1) = v51;
    if (v50)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

  if (a1 == 53 || a1 == 2)
  {
    sub_10001B0D8();

    CalculateExpression.clearAll()();

    sub_1000DBEAC();

    CalculateExpression.clearAll()();

    swift_getKeyPath();
    v53 = v3;
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + 41) == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

LABEL_40:
  v46 = [objc_opt_self() defaultCenter];
  if (qword_1001544D8 != -1)
  {
    swift_once();
  }

  [v46 postNotificationName:qword_100160B00 object:0];
}

uint64_t sub_1000D7638()
{
  sub_10001B0D8();

  CalculateExpression.clearAll()();

  sub_1000DBEAC();

  CalculateExpression.clearAll()();

  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 41) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_1000D77A4()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_1000D784C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_1000D78F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000D7924(v4);
}

uint64_t sub_1000D7924(uint64_t a1)
{
  v6 = *(v1 + 24);
  type metadata accessor for CalculateExpression();
  sub_100018364(&qword_100154C08, &type metadata accessor for CalculateExpression);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000D7A98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_1000D7B44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1000D7B70(v4);
}

uint64_t sub_1000D7B70(uint64_t a1)
{
  v6 = *(v1 + 32);
  type metadata accessor for CalculateExpression();
  sub_100018364(&qword_100154C08, &type metadata accessor for CalculateExpression);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v3 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000D7CE4(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000D7DF4(uint64_t result)
{
  if (*(v1 + 41) == (result & 1))
  {
    *(v1 + 41) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000D7F04(uint64_t result)
{
  if (*(v1 + 42) == (result & 1))
  {
    *(v1 + 42) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000D8014(uint64_t result)
{
  if (*(v1 + 43) == (result & 1))
  {
    *(v1 + 43) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000D8124()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + 24);
    v3 = qword_100154728;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = qword_100160D98;
    swift_getKeyPath();
    sub_100018364(&qword_100154C00, type metadata accessor for AppSettings);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v4 + 17);
    CalculateExpression.allowsArabicMath.setter();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v1 + 32);
    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v4 + 17);
    CalculateExpression.allowsArabicMath.setter();
  }

  return result;
}

uint64_t sub_1000D8360()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 42);
}

uint64_t sub_1000D8400@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 42);
  return result;
}

uint64_t sub_1000D84D8()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 43);
}

uint64_t sub_1000D8578@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 43);
  return result;
}

id sub_1000D8620@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_1000D86D8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000D8708(v2);
}

void sub_1000D8708(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000050A0(0, &qword_1001592E8, CalculateResult_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 48);
LABEL_8:
  *(v2 + 48) = a1;
}

void sub_1000D88D8()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v0 + 48))
  {
    sub_1000DC17C(&_swiftEmptyArrayStorage);
    v1 = evaluate(_:options:)();

    sub_1000D8708(v1);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 48);
  if (!v2)
  {
LABEL_8:
    *(v0 + 48) = 0;
    return;
  }

  v3 = v2;
  sub_10001B0D8();

  v4 = CalculateExpression.activeError.getter();

  if (v4)
  {

    goto LABEL_6;
  }

  sub_10001B0D8();

  v6 = CalculateExpression.result.getter();

  if (!v6)
  {
LABEL_6:

    if (*(v0 + 48))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return;
    }

    goto LABEL_8;
  }

  sub_10003AE84(&qword_100156488, &qword_10010F548);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010BDE0;
  v8 = CalculateKeyVariables;
  *(inited + 32) = CalculateKeyVariables;
  sub_10003AE84(&qword_1001592C8, &qword_1001140C0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10010DBE0;
  *(v9 + 32) = 120;
  *(v9 + 40) = 0xE100000000000000;
  *(v9 + 48) = v3;
  *(v9 + 56) = 121;
  *(v9 + 64) = 0xE100000000000000;
  *(v9 + 72) = v6;
  v10 = v3;
  v11 = v8;
  v12 = v6;
  v13 = sub_100076F24(v9);
  swift_setDeallocating();
  sub_10003AE84(&qword_1001592D0, &qword_1001140C8);
  swift_arrayDestroy();
  *(inited + 64) = sub_10003AE84(&qword_1001592D8, &qword_1001140D0);
  *(inited + 40) = v13;
  sub_100008E44(inited);
  swift_setDeallocating();
  sub_1000035CC(inited + 32, &qword_100156018, &qword_10010E3A0);
  v14 = evaluate(_:options:)();

  sub_1000D8708(v14);
}

uint64_t sub_1000D8C40(uint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    goto LABEL_29;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

  while ((v1 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v4 = result;
    if (v3 < 1)
    {
      goto LABEL_33;
    }

LABEL_6:
    if (!v2)
    {
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 1)
    {
      goto LABEL_36;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
LABEL_11:
    if (result < v3)
    {
      goto LABEL_35;
    }

    if ((v1 & 0xC000000000000001) == 0 || v3 == 1)
    {

      if (!v2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      type metadata accessor for CalculateExpression.RichToken();

      v5 = 1;
      do
      {
        v6 = v5 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v5);
        v5 = v6;
      }

      while (v3 != v6);
      if (!v2)
      {
LABEL_17:
        v7 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
        v8 = 1;
        goto LABEL_20;
      }
    }

    _CocoaArrayWrapper.subscript.getter();
    v7 = v9;
    v8 = v10;
    v3 = v11 >> 1;
LABEL_20:
    v12 = swift_unknownObjectRetain();
    v1 = v4;
    v13 = sub_1000DA214(v12);
    v2 = v14;
    v15 = v3 - v8;
    if (v3 == v8)
    {
LABEL_27:
      swift_unknownObjectRelease_n();

      return v13;
    }

    if (v3 <= v8)
    {
      v16 = v8;
    }

    else
    {
      v16 = v3;
    }

    v17 = v16 - v8;
    v18 = (v7 + 8 * v8);
    while (v17)
    {
      v19 = *v18++;

      v21 = sub_1000DA214(v20);
      v23 = v22;
      v25 = v13;
      v26 = v2;

      v1 = &v25;
      v24._countAndFlagsBits = v21;
      v24._object = v23;
      String.append(_:)(v24);

      v13 = v25;
      v2 = v26;
      --v17;
      if (!--v15)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      return 0;
    }
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

  v4 = *(v1 + 32);

  if (v3 >= 1)
  {
    goto LABEL_6;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1000D8E8C(uint64_t a1, unint64_t a2, char a3, void *a4, void *a5)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    swift_getKeyPath();
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v5 + 24);

    CalculateExpression.options.getter();

    if ((a3 & 1) != 0 && a4 && a5)
    {
      v11 = a4;
      v12 = a5;
      v15 = evaluateError(_:options:)();

      [v15 setSynchronous:0];
      v16 = CalculateResult.converted(to:from:)();
    }

    else
    {
      v16 = evaluate(_:options:)();
    }

    return v16;
  }

  else
  {
    sub_1000DC17C(&_swiftEmptyArrayStorage);
    v13 = evaluate(_:options:)();

    return v13;
  }
}

uint64_t sub_1000D91BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = OBJC_IVAR____TtC10Calculator27CalculatorExpressionManager___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000D9280()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 40) == 1)
  {
    sub_10001B0D8();

    CalculateExpression.expression.getter();

    sub_10001B0D8();

    sub_1000DBEAC();

    CalculateExpression.expression.getter();

    CalculateExpression.expression.setter();

    sub_1000DBEAC();
  }

  else
  {
    sub_1000DBEAC();

    CalculateExpression.expression.getter();

    sub_1000DBEAC();

    sub_10001B0D8();

    CalculateExpression.expression.getter();

    CalculateExpression.expression.setter();

    sub_10001B0D8();
  }

  CalculateExpression.expression.setter();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1 == *(v0 + 40))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000D9540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v18 - v8;
  if (*(a3 + 43) == 1)
  {
    *(a3 + 43) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v18[-2] = a3;
    LOBYTE(v18[-1]) = 1;
    v18[1] = a3;
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000048C8(v11, qword_100160D38);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Updating currency", v14, 2u);
  }

  static TaskPriority.background.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;

  sub_1000502A0(0, 0, v9, &unk_100113FC0, v16);

  return sub_1000035CC(v9, &qword_100154BB0, &qword_10010FAE0);
}

uint64_t sub_1000D9824(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*(sub_10003AE84(&qword_100154BB0, &qword_10010FAE0) - 8) + 64) + 15;
  v6[3] = swift_task_alloc();
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_1000D9950;

  return v12();
}

uint64_t sub_1000D9950(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000D9A50, 0, 0);
}

uint64_t sub_1000D9A50()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  *(v6 + 32) = v1;
  *(v6 + 40) = v3;
  sub_100050560(0, 0, v2, &unk_100113FD0, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000D9B70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 40) = a4;
  type metadata accessor for MainActor();
  *(v5 + 32) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D9C0C, v7, v6);
}

uint64_t sub_1000D9C0C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  if (v2 == 1)
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000048C8(v3, qword_100160D38);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Updated currency";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  else
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000048C8(v8, qword_100160D38);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Failed to update currency";
      goto LABEL_10;
    }
  }

  v9 = *(v0 + 24);

  if (*(v9 + 43))
  {
    v10 = *(v0 + 24);
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v0 + 16) = v10;
    sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v9 + 43) = 0;
  }

  if (*(v0 + 40) != 1)
  {
    goto LABEL_24;
  }

  if (qword_100154378 != -1)
  {
    swift_once();
  }

  v12 = qword_100160888;
  type metadata accessor for StocksKitCurrencyCache();
  if (static StocksKitCurrencyCache.isEnabled.getter())
  {
    v13 = *(v12 + 24);
    if (dispatch thunk of StocksKitCurrencyCache.needsRefresh.getter())
    {
      goto LABEL_24;
    }
  }

  else if ([*(v12 + 16) needsRefresh])
  {
    goto LABEL_24;
  }

  v14 = [objc_opt_self() defaultCenter];
  if (qword_1001544E0 != -1)
  {
    swift_once();
  }

  [v14 postNotificationName:qword_100160B08 object:0];

LABEL_24:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1000D9F98()
{
  type metadata accessor for StocksKitCurrencyCache();
  *(v0 + 16) = static StocksKitCurrencyCache.shared.getter();
  v1 = *(&async function pointer to dispatch thunk of StocksKitCurrencyCache.refresh() + 1);
  v4 = (&async function pointer to dispatch thunk of StocksKitCurrencyCache.refresh() + async function pointer to dispatch thunk of StocksKitCurrencyCache.refresh());
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000DA050;

  return v4();
}

uint64_t sub_1000DA050(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_1000DA180()
{
  v1 = [objc_opt_self() shared];
  v2 = [v1 refreshIfNeeded];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000DB148@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CalculateExpression.TokenType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  CalculateExpression.RichToken.type.getter();
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for CalculateExpression.TokenType.add(_:) && v7 != enum case for CalculateExpression.TokenType.subtract(_:) && v7 != enum case for CalculateExpression.TokenType.multiply(_:) && v7 != enum case for CalculateExpression.TokenType.divide(_:) && v7 != enum case for CalculateExpression.TokenType.factorial(_:) && v7 != enum case for CalculateExpression.TokenType.percent(_:) && v7 != enum case for CalculateExpression.TokenType.comma(_:) && v7 != enum case for CalculateExpression.TokenType.pi(_:) && v7 != enum case for CalculateExpression.TokenType.eulerNumber(_:) && v7 != enum case for CalculateExpression.TokenType.openParenthesis(_:) && v7 != enum case for CalculateExpression.TokenType.closeParenthesis(_:) && v7 != enum case for CalculateExpression.TokenType.or(_:) && v7 != enum case for CalculateExpression.TokenType.nor(_:) && v7 != enum case for CalculateExpression.TokenType.xor(_:) && v7 != enum case for CalculateExpression.TokenType.leftShift(_:) && v7 != enum case for CalculateExpression.TokenType.rightShift(_:) && v7 != enum case for CalculateExpression.TokenType.leftRotate(_:) && v7 != enum case for CalculateExpression.TokenType.rightRotate(_:) && v7 != enum case for CalculateExpression.TokenType.not(_:) && v7 != enum case for CalculateExpression.TokenType.neg(_:) && v7 != enum case for CalculateExpression.TokenType.equal(_:))
  {
    (*(v3 + 8))(v6, v2);
    v12 = dispatch thunk of CalculateExpression.RichToken.text.getter();
    v13 = v11;
    if (v12 == 40 && v11 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 46 && v13 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 28268 && v13 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 7235955 && v13 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 7565155 && v13 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 7233908 && v13 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 1752066419 && v13 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 1752395619 && v13 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 1752064372 && v13 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 1852404577 && v13 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 1936679777 && v13 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 1851880545 && v13 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 0x686E697361 && v13 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 0x68736F6361 && v13 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 0x686E617461 && v13 == 0xE500000000000000)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v8 = 1;
        goto LABEL_5;
      }
    }
  }

  LocalizedStringResource.init(stringLiteral:)();
  v8 = 0;
LABEL_5:
  v9 = type metadata accessor for LocalizedStringResource();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_1000DBB74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100018364(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1000DBC44(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1000DBC90(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100008F70(a1, v4);
}

uint64_t sub_1000DBD4C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100006E5C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1000DBDA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003AE84(&qword_1001592B0, &qword_100114010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1000DBE9C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1000DBEAC()
{
  swift_getKeyPath();
  sub_100018364(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 40) == 1)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = 32;
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = 24;
  }

  return *(v0 + v1);
}

uint64_t sub_1000DBFF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030CEC;

  return sub_1000D9824(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000DC0B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030DE0;

  return sub_1000D9B70(a1, v4, v5, v6, v7);
}

unint64_t sub_1000DC17C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003AE84(&qword_100156010, &unk_100114000);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000DC284(v4, &v11);
      v5 = v11;
      result = sub_1000DBC90(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100008F60(&v12, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000DC284(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100156018, &qword_10010E3A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC2F4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1000DC328()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

unint64_t sub_1000DC384()
{
  result = qword_1001592C0;
  if (!qword_1001592C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001592C0);
  }

  return result;
}

void sub_1000DC460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000DC4C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000F378(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1000DC594@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 + *(type metadata accessor for CalculatorAppContentView() + 28));
  v10 = *v9;
  v11 = *(v9 + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    v10 = v16;
  }

  swift_getKeyPath();
  v16 = v10;
  sub_10000F378(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v10 + 49);

  *a2 = v13;
  return result;
}

uint64_t sub_1000DC76C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = (a4 + *(type metadata accessor for CalculatorAppContentView() + 28));
  v13 = *v12;
  LOBYTE(a1) = *(v12 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    v13 = v18;
  }

  if (*(v13 + 49) != v11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v13;
    *(&v17 - 8) = v11;
    v18 = v13;
    sub_10000F378(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000DC9B0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for CalculatorAppContentView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000DC594(v6, a1);
}

uint64_t sub_1000DCA24(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for CalculatorAppContentView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000DC76C(a1, v4, v5, v6);
}

uint64_t sub_1000DCA98@<X0>(BOOL *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_10006DC5C(a1);
}

uint64_t sub_1000DCAA8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

_BYTE *sub_1000DCAF0(_BYTE *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  return sub_10006DCBC(result);
}

unint64_t sub_1000DCB00()
{
  result = qword_1001593B8;
  if (!qword_1001593B8)
  {
    sub_10003AECC(&qword_1001593B0, &qword_100114180);
    type metadata accessor for CalculatorLayout(255);
    sub_10000D530();
    sub_10000F378(&qword_100154958, type metadata accessor for CalculatorLayout);
    swift_getOpaqueTypeConformance2();
    sub_10000AF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001593B8);
  }

  return result;
}

uint64_t sub_1000DCC08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000DCC50(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000DCCA0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {

    v5 = *(v2 + 112);
    v6 = *(v2 + 120);
    v7 = sub_1000DCE84;
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 120);
    v7 = sub_1000DCDC8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000DCDC8()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];

  v4 = *(v3 + 56);
  *(swift_task_alloc() + 16) = v3;
  withAnimation<A>(_:_:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000DCE84()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = *(v2 + 56);
  *(swift_task_alloc() + 16) = v2;
  withAnimation<A>(_:_:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DCF38()
{
  v2 = **(v0 + 16);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

unint64_t sub_1000DCF9C()
{
  result = qword_1001593F8;
  if (!qword_1001593F8)
  {
    sub_10003AECC(&qword_1001593D8, &qword_100114288);
    sub_100004880(&qword_1001593F0, &qword_1001593E8, &qword_100114298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001593F8);
  }

  return result;
}

uint64_t sub_1000DD054(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_1001593D8, &qword_100114288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD0C4(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001593D8, &qword_100114288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DD12C()
{
  result = qword_100159400;
  if (!qword_100159400)
  {
    sub_10003AECC(&qword_1001593D0, &qword_100114280);
    sub_1000DD1B8();
    sub_10000EA4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159400);
  }

  return result;
}

unint64_t sub_1000DD1B8()
{
  result = qword_100159408;
  if (!qword_100159408)
  {
    sub_10003AECC(&qword_1001593C8, &qword_100114268);
    sub_1000DD270();
    sub_100004880(&qword_1001576B8, &qword_1001576C0, &qword_100111B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159408);
  }

  return result;
}

unint64_t sub_1000DD270()
{
  result = qword_100159410;
  if (!qword_100159410)
  {
    sub_10003AECC(&qword_100159418, &unk_1001142A0);
    sub_100004880(&qword_1001593F0, &qword_1001593E8, &qword_100114298);
    sub_1000DCF9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159410);
  }

  return result;
}

void sub_1000DD350(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  v5 = String._bridgeToObjectiveC()();
  [v4 setDateFormat:v5];

  *a3 = v4;
}

id sub_1000DD404(uint64_t a1, Class *a2, SEL *a3, uint64_t a4, void *a5)
{
  v8 = [objc_allocWithZone(*a2) init];
  result = [v8 *a3];
  *a5 = v8;
  return result;
}

uint64_t sub_1000DD45C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10003AE84(&qword_100159450, &qword_1001144E8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v78 = &v75 - v4;
  v91 = type metadata accessor for Locale.Language();
  v5 = *(v91 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v91);
  v90 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003AE84(&qword_100157A70, &unk_100112030);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v89 = &v75 - v10;
  v11 = sub_10003AE84(&qword_100155210, &qword_100111700);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v75 - v13;
  v15 = type metadata accessor for Locale();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v88 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v81 = &v75 - v21;
  v22 = __chkstk_darwin(v20);
  v80 = &v75 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v75 - v25;
  __chkstk_darwin(v24);
  v28 = &v75 - v27;
  type metadata accessor for CalculatorViewModel();
  sub_1000E5A70(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  *a1 = Environment.init<A>(_:)();
  *(a1 + 8) = v29 & 1;
  v96 = 808464433;
  v97 = 0xE400000000000000;
  State.init(wrappedValue:)();
  v30 = v99;
  *(a1 + 16) = v98;
  *(a1 + 32) = v30;
  LOBYTE(v96) = 1;
  State.init(wrappedValue:)();
  v31 = *(&v98 + 1);
  *(a1 + 40) = v98;
  *(a1 + 48) = v31;
  LOBYTE(v96) = 1;
  State.init(wrappedValue:)();
  v32 = *(&v98 + 1);
  *(a1 + 56) = v98;
  *(a1 + 64) = v32;
  v33 = type metadata accessor for DebugMenu();
  v34 = *(v33 + 32);
  Locale.init(identifier:)();
  (*(v16 + 16))(v26, v28, v15);
  State.init(wrappedValue:)();
  v82 = v16;
  v35 = *(v16 + 8);
  v79 = v28;
  v93 = v35;
  v94 = v16 + 8;
  v35(v28, v15);
  v76 = v33;
  v36 = a1 + *(v33 + 36);
  LOBYTE(v96) = 0;
  State.init(wrappedValue:)();
  v37 = *(&v98 + 1);
  *v36 = v98;
  *(v36 + 8) = v37;
  *&v98 = static Locale.availableIdentifiers.getter();

  sub_1000E31F0(&v98);
  v77 = a1;

  v38 = v98;
  v87 = *(v98 + 16);
  if (v87)
  {
    v39 = 0;
    v40 = v81;
    v92 = (v82 + 32);
    v84 = (v82 + 56);
    v85 = (v5 + 8);
    v83 = (v82 + 48);
    v41 = (v98 + 40);
    v95 = _swiftEmptyArrayStorage;
    v86 = v98;
    while (1)
    {
      if (v39 >= *(v38 + 16))
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v42 = *(v41 - 1);
      v43 = *v41;
      swift_bridgeObjectRetain_n();
      Locale.init(identifier:)();
      v44 = v90;
      Locale.language.getter();
      v45 = v89;
      Locale.Language.languageCode.getter();
      v46 = v45;
      (*v85)(v44, v91);
      v47 = type metadata accessor for Locale.LanguageCode();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v46, 1, v47) == 1)
      {
        break;
      }

      v52 = v14;
      v53 = Locale.LanguageCode.identifier.getter();
      v55 = v54;
      (*(v48 + 8))(v46, v47);
      v56 = v79;
      static Locale.current.getter();
      v57._countAndFlagsBits = v53;
      v14 = v52;
      v40 = v81;
      v57._object = v55;
      object = Locale.localizedString(forIdentifier:)(v57).value._object;

      v93(v56, v15);
      if (object)
      {

        v59 = v78;
        Locale.region.getter();
        v60 = type metadata accessor for Locale.Region();
        v61 = *(v60 - 8);
        if ((*(v61 + 48))(v59, 1, v60) == 1)
        {
          v49 = v59;
          v50 = &qword_100159450;
          v51 = &qword_1001144E8;
          goto LABEL_11;
        }

        Locale.Region.icuDisplayName.getter();
        v69 = v68;
        (*(v61 + 8))(v59, v60);
        if (v69)
        {

          (*v92)(v14, v40, v15);
          v62 = 0;
          goto LABEL_13;
        }
      }

LABEL_12:
      v93(v40, v15);
      v62 = 1;
LABEL_13:
      (*v84)(v14, v62, 1, v15);

      if ((*v83)(v14, 1, v15) == 1)
      {
        sub_1000035CC(v14, &qword_100155210, &qword_100111700);
      }

      else
      {
        v63 = *v92;
        v64 = v80;
        (*v92)(v80, v14, v15);
        v63(v88, v64, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1000AC3A4(0, *(v95 + 2) + 1, 1, v95);
        }

        v66 = *(v95 + 2);
        v65 = *(v95 + 3);
        if (v66 >= v65 >> 1)
        {
          v95 = sub_1000AC3A4(v65 > 1, v66 + 1, 1, v95);
        }

        v67 = v95;
        *(v95 + 2) = v66 + 1;
        v63(&v67[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v66], v88, v15);
      }

      ++v39;
      v41 += 2;
      v38 = v86;
      if (v87 == v39)
      {
        goto LABEL_22;
      }
    }

    v49 = v46;
    v50 = &qword_100157A70;
    v51 = &unk_100112030;
LABEL_11:
    sub_1000035CC(v49, v50, v51);
    goto LABEL_12;
  }

  v95 = _swiftEmptyArrayStorage;
LABEL_22:

  v70 = v76;
  v71 = v77;
  *(v77 + *(v76 + 40)) = v95;
  v72 = v71 + *(v70 + 44);
  LOBYTE(v96) = 0;
  result = State.init(wrappedValue:)();
  v74 = *(&v98 + 1);
  *v72 = v98;
  *(v72 + 8) = v74;
  return result;
}

void sub_1000DDD64()
{
  sub_100019A64();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000DDDE8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC10CalculatorP33_975093CEE8F9D0E989FB2156FC3C1A8C38CalculatorAppDebugMenuGestureProxyView_action);
    v2 = *(result + OBJC_IVAR____TtC10CalculatorP33_975093CEE8F9D0E989FB2156FC3C1A8C38CalculatorAppDebugMenuGestureProxyView_action + 8);
    v3 = result;

    v1();
  }

  return result;
}

id sub_1000DDE98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalculatorAppDebugMenuGestureProxyView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000DDEF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v87 = a2;
  v3 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v84 = &v79 - v5;
  v85 = sub_10003AE84(&qword_100159628, &qword_100114700);
  v6 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v81 = &v79 - v7;
  v8 = sub_10003AE84(&qword_100159630, &qword_100114708);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v97 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v101 = &v79 - v12;
  v13 = type metadata accessor for DebugMenu();
  v83 = *(v13 - 8);
  v82 = *(v83 + 64);
  __chkstk_darwin(v13 - 8);
  v79 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v86 = *(v102 - 8);
  v15 = *(v86 + 64);
  v16 = __chkstk_darwin(v102);
  v96 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v100 = &v79 - v18;
  v19 = sub_10003AE84(&qword_100159638, &qword_100114710);
  v20 = *(v19 - 8);
  v80 = v19 - 8;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19 - 8);
  v95 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v98 = &v79 - v24;
  v25 = sub_10003AE84(&qword_100159640, &qword_100114718);
  v93 = *(v25 - 8);
  v94 = v25;
  v26 = v93[8];
  v27 = __chkstk_darwin(v25);
  v92 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v99 = &v79 - v29;
  v30 = sub_10003AE84(&qword_100159648, &qword_100114720);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v79 - v33;
  v91 = sub_10003AE84(&qword_100159650, &unk_100114728);
  v90 = *(v91 - 8);
  v35 = v90[8];
  v36 = __chkstk_darwin(v91);
  v89 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v79 - v38;
  LocalizedStringKey.init(stringLiteral:)();
  v40 = *(a1 + 32);
  v106 = *(a1 + 16);
  v107 = v40;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.projectedValue.getter();
  v41 = v98;
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  sub_100004880(&qword_100159658, &qword_100159648, &qword_100114720);
  v88 = v39;
  v42 = v79;
  View.keyboardType(_:)();
  v43 = v34;
  v44 = v81;
  (*(v31 + 8))(v43, v30);
  v45 = *(a1 + 48);
  LOBYTE(v106) = *(a1 + 40);
  LOBYTE(v31) = v106;
  *(&v106 + 1) = v45;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  Toggle.init(isOn:label:)();
  v46 = *(a1 + 64);
  LOBYTE(v106) = *(a1 + 56);
  *(&v106 + 1) = v46;
  State.projectedValue.getter();
  Toggle.init(isOn:label:)();
  LOBYTE(v104) = v31;
  v105 = v45;
  State.wrappedValue.getter();
  LOBYTE(v31) = v106;
  KeyPath = swift_getKeyPath();
  v48 = swift_allocObject();
  *(v48 + 16) = (v31 & 1) == 0;
  v49 = (v41 + *(v80 + 44));
  *v49 = KeyPath;
  v49[1] = sub_1000E5BB0;
  v49[2] = v48;
  sub_1000E5564(a1, v42);
  v50 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v51 = swift_allocObject();
  sub_1000E55C8(v42, v51 + v50);
  v103 = a1;
  Button.init(action:label:)();
  v52 = v84;
  static ButtonRole.destructive.getter();
  v53 = type metadata accessor for ButtonRole();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  sub_1000E5564(a1, v42);
  v54 = swift_allocObject();
  sub_1000E55C8(v42, v54 + v50);
  Button.init(role:action:label:)();
  if (qword_100154500 != -1)
  {
    swift_once();
  }

  sub_1000E5564(a1, v42);
  v55 = swift_allocObject();
  sub_1000E55C8(v42, v55 + v50);
  sub_1000050A0(0, &qword_100159660, NSDistributedNotificationCenter_ptr);
  v56 = [swift_getObjCClassFromMetadata() defaultCenter];
  v57 = v85;
  v58 = v44 + *(v85 + 52);
  NSNotificationCenter.publisher(for:object:)();

  v59 = swift_allocObject();
  *(v59 + 16) = sub_1000E5BAC;
  *(v59 + 24) = v55;
  v60 = (v44 + *(v57 + 56));
  *v60 = sub_1000E58D0;
  v60[1] = v59;
  sub_100004880(&qword_100159668, &qword_100159628, &qword_100114700);
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v44, &qword_100159628, &qword_100114700);
  v61 = v90[2];
  v62 = v89;
  v63 = v91;
  v61(v89, v88, v91);
  v85 = v93[2];
  v64 = v92;
  (v85)(v92, v99, v94);
  v65 = v95;
  sub_100008E68(v98, v95, &qword_100159638, &qword_100114710);
  v66 = v86;
  v84 = *(v86 + 16);
  (v84)(v96, v100, v102);
  sub_100008E68(v101, v97, &qword_100159630, &qword_100114708);
  v67 = v87;
  v61(v87, v62, v63);
  v68 = sub_10003AE84(&qword_100159670, &qword_100114738);
  v69 = v64;
  v70 = v94;
  (v85)(&v67[v68[12]], v69, v94);
  sub_100008E68(v65, &v67[v68[16]], &qword_100159638, &qword_100114710);
  v71 = v96;
  v72 = v102;
  (v84)(&v67[v68[20]], v96, v102);
  v73 = v97;
  sub_100008E68(v97, &v67[v68[24]], &qword_100159630, &qword_100114708);
  sub_1000035CC(v101, &qword_100159630, &qword_100114708);
  v74 = *(v66 + 8);
  v74(v100, v72);
  sub_1000035CC(v98, &qword_100159638, &qword_100114710);
  v75 = v93[1];
  v75(v99, v70);
  v76 = v90[1];
  v77 = v91;
  v76(v88, v91);
  sub_1000035CC(v73, &qword_100159630, &qword_100114708);
  v74(v71, v102);
  sub_1000035CC(v95, &qword_100159638, &qword_100114710);
  v75(v92, v70);
  return (v76)(v89, v77);
}

void sub_1000DEBE4(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x8000000100109240;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

void sub_1000DEC14(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000014;
  *(a1 + 8) = 0x8000000100109220;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

unsigned __int8 *sub_1000DEC44(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  v49 = *(a1 + 1);
  v50 = v12;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  v49 = v48;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10006345C();
  v13 = StringProtocol.trimmingCharacters(in:)();
  v15 = v14;
  (*(v8 + 8))(v11, v7);

  v17 = HIBYTE(v15) & 0xF;
  v18 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v19 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    goto LABEL_64;
  }

  if ((v15 & 0x1000000000000000) == 0)
  {
    if ((v15 & 0x2000000000000000) != 0)
    {
      *&v49 = v13;
      *(&v49 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      if (v13 == 43)
      {
        if (v17)
        {
          if (--v17)
          {
            v21 = 0;
            v31 = &v49 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              v33 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                break;
              }

              v21 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                break;
              }

              ++v31;
              if (!--v17)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (v13 != 45)
      {
        if (v17)
        {
          v21 = 0;
          v36 = &v49;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            ++v36;
            if (!--v17)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v17)
      {
        if (--v17)
        {
          v21 = 0;
          v25 = &v49 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v17)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((v13 & 0x1000000000000000) != 0)
      {
        result = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v20 = *result;
      if (v20 == 43)
      {
        if (v18 >= 1)
        {
          v17 = v18 - 1;
          if (v18 != 1)
          {
            v21 = 0;
            if (result)
            {
              v28 = result + 1;
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_61;
                }

                v30 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  goto LABEL_61;
                }

                v21 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  goto LABEL_61;
                }

                ++v28;
                if (!--v17)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_73;
      }

      if (v20 != 45)
      {
        if (v18)
        {
          v21 = 0;
          if (result)
          {
            while (1)
            {
              v34 = *result - 48;
              if (v34 > 9)
              {
                goto LABEL_61;
              }

              v35 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_61;
              }

              v21 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v18)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v21 = 0;
        LOBYTE(v17) = 1;
        goto LABEL_62;
      }

      if (v18 >= 1)
      {
        v17 = v18 - 1;
        if (v18 != 1)
        {
          v21 = 0;
          if (result)
          {
            v22 = result + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_61;
              }

              v24 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_61;
              }

              v21 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                goto LABEL_61;
              }

              ++v22;
              if (!--v17)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v17) = 0;
LABEL_62:
          LOBYTE(v48) = v17;
          v39 = v17;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  LOBYTE(v48) = 0;
  v21 = sub_10006FF4C(v13, v15, 10);
  v39 = v46;
LABEL_63:

  if (v39)
  {
LABEL_64:
    v21 = 1000;
  }

  v40 = *a1;
  v41 = *(a1 + 8);

  if ((v41 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  v43 = a1[6];
  LOBYTE(v49) = *(a1 + 40);
  *(&v49 + 1) = v43;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.wrappedValue.getter();
  v44 = v48;
  v45 = a1[8];
  LOBYTE(v49) = *(a1 + 56);
  *(&v49 + 1) = v45;
  State.wrappedValue.getter();
  sub_1000E3C28(v21, v44, v48);
}

void sub_1000DF1C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v45 = 0x20657461657243;
  v46 = 0xE700000000000000;
  v9 = *(a1 + 32);
  v43 = *(a1 + 16);
  v44 = v9;
  sub_10003AE84(&qword_100158880, &unk_1001131D0);
  State.wrappedValue.getter();
  v43 = v42;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_10006345C();
  v10 = StringProtocol.trimmingCharacters(in:)();
  v12 = v11;
  (*(v5 + 8))(v8, v4);

  v13 = HIBYTE(v12) & 0xF;
  v14 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    goto LABEL_64;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    LOBYTE(v42) = 0;
    v18 = sub_10006FF4C(v10, v12, 10);
    v36 = v40;
LABEL_63:

    if ((v36 & 1) == 0)
    {
LABEL_65:
      *&v43 = v18;
      v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v37);

      v38._countAndFlagsBits = 0x79726F7473694820;
      v38._object = 0xEE00736D65744920;
      String.append(_:)(v38);
      v39 = v46;
      *a2 = v45;
      *(a2 + 8) = v39;
      *(a2 + 16) = 0;
      *(a2 + 24) = _swiftEmptyArrayStorage;
      return;
    }

LABEL_64:
    v18 = 1000;
    goto LABEL_65;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {
    if ((v10 & 0x1000000000000000) != 0)
    {
      v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v16 = _StringObject.sharedUTF8.getter();
    }

    v17 = *v16;
    if (v17 == 43)
    {
      if (v14 >= 1)
      {
        v13 = v14 - 1;
        if (v14 != 1)
        {
          v18 = 0;
          if (v16)
          {
            v25 = v16 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_61;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_61;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_61;
              }

              ++v25;
              if (!--v13)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v17 != 45)
    {
      if (v14)
      {
        v18 = 0;
        if (v16)
        {
          while (1)
          {
            v31 = *v16 - 48;
            if (v31 > 9)
            {
              goto LABEL_61;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_61;
            }

            v18 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              goto LABEL_61;
            }

            ++v16;
            if (!--v14)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v18 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_62;
    }

    if (v14 >= 1)
    {
      v13 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        if (v16)
        {
          v19 = v16 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_61;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              goto LABEL_61;
            }

            ++v19;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v13) = 0;
LABEL_62:
        LOBYTE(v42) = v13;
        v36 = v13;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *&v43 = v10;
  *(&v43 + 1) = v12 & 0xFFFFFFFFFFFFFFLL;
  if (v10 != 43)
  {
    if (v10 != 45)
    {
      if (v13)
      {
        v18 = 0;
        v33 = &v43;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v13)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v13)
    {
      if (--v13)
      {
        v18 = 0;
        v22 = &v43 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v13)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v13)
  {
    if (--v13)
    {
      v18 = 0;
      v28 = &v43 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        v30 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          break;
        }

        v18 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          break;
        }

        ++v28;
        if (!--v13)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
}

void sub_1000DF660(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000011;
  *(a1 + 8) = 0x8000000100109200;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_1000DF690(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v10[1] = *a1;
  }

  else
  {
    v7 = *a1;

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  if (qword_100154370 != -1)
  {
    swift_once();
  }

  return sub_100044EA4();
}

uint64_t sub_1000DF828@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v65 = sub_10003AE84(&qword_1001595C8, &qword_100114668);
  v3 = *(*(v65 - 8) + 64);
  v4 = __chkstk_darwin(v65);
  v75 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = &v61 - v6;
  v7 = type metadata accessor for DebugMenu();
  v8 = v7 - 8;
  v63 = *(v7 - 8);
  v72 = *(v63 + 64);
  __chkstk_darwin(v7);
  v62 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  v12 = __chkstk_darwin(v10);
  v66 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v61 - v14;
  v15 = sub_10003AE84(&qword_1001595D0, &qword_100114670);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v74 = sub_10003AE84(&qword_1001595D8, &qword_100114678);
  v64 = *(v74 - 8);
  v17 = *(v64 + 64);
  v18 = __chkstk_darwin(v74);
  v73 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v61 - v20;
  LocalizedStringKey.init(stringLiteral:)();
  v61 = v22;
  v23 = *(v8 + 40);
  sub_10003AE84(&qword_100159458, &qword_100114528);
  State.projectedValue.getter();
  v78 = a1;
  type metadata accessor for Locale();
  sub_10003AE84(&qword_1001595E0, &qword_100114680);
  sub_1000E5A70(&qword_1001595E8, &type metadata accessor for Locale);
  sub_1000E5708();
  v24 = v70;
  v71 = v21;
  v25 = v62;
  Picker<>.init(_:selection:content:)();
  sub_1000E5564(a1, v25);
  v26 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v27 = swift_allocObject();
  sub_1000E55C8(v25, v27 + v26);
  v77 = a1;
  Button.init(action:label:)();
  Button.init(action:label:)();
  v28 = a1 + *(v8 + 52);
  v29 = *v28;
  v30 = *(v28 + 8);
  v80 = v29;
  v81 = v30;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.wrappedValue.getter();
  v31 = v79;
  KeyPath = swift_getKeyPath();
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  v34 = v24;
  v35 = (v24 + *(sub_10003AE84(&qword_100159608, &qword_1001146C0) + 36));
  *v35 = KeyPath;
  v35[1] = sub_1000296E4;
  v35[2] = v33;
  if (qword_1001544E8 != -1)
  {
    swift_once();
  }

  sub_1000E5564(a1, v25);
  v36 = v25;
  v37 = swift_allocObject();
  sub_1000E55C8(v36, v37 + v26);
  v38 = [objc_opt_self() defaultCenter];
  v39 = sub_10003AE84(&qword_100159610, &qword_1001146C8);
  v40 = v34 + *(v39 + 52);
  NSNotificationCenter.publisher(for:object:)();

  v41 = swift_allocObject();
  *(v41 + 16) = sub_1000E5828;
  *(v41 + 24) = v37;
  v42 = (v34 + *(v39 + 56));
  *v42 = sub_10008D47C;
  v42[1] = v41;
  sub_1000E5564(a1, v36);
  v43 = swift_allocObject();
  sub_1000E55C8(v36, v43 + v26);
  v44 = (v34 + *(v65 + 36));
  *v44 = sub_1000E5840;
  v44[1] = v43;
  v44[2] = 0;
  v44[3] = 0;
  v45 = v64;
  v46 = *(v64 + 16);
  v47 = v73;
  v46(v73, v71, v74);
  v48 = v67;
  v49 = v68;
  v50 = *(v67 + 16);
  v51 = v66;
  v50(v66, v76, v68);
  sub_100008E68(v34, v75, &qword_1001595C8, &qword_100114668);
  v52 = v69;
  v53 = v47;
  v54 = v74;
  v46(v69, v53, v74);
  v55 = sub_10003AE84(&qword_100159618, &unk_1001146D0);
  v50(&v52[*(v55 + 48)], v51, v49);
  v56 = &v52[*(v55 + 64)];
  v57 = v75;
  sub_100008E68(v75, v56, &qword_1001595C8, &qword_100114668);
  sub_1000035CC(v70, &qword_1001595C8, &qword_100114668);
  v58 = *(v48 + 8);
  v58(v76, v49);
  v59 = *(v45 + 8);
  v59(v71, v54);
  sub_1000035CC(v57, &qword_1001595C8, &qword_100114668);
  v58(v51, v49);
  return (v59)(v73, v54);
}

uint64_t sub_1000E0078(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for DebugMenu() + 40));
  swift_getKeyPath();

  sub_10003AE84(&qword_100156498, &qword_10010F558);
  sub_10003AE84(&qword_100159600, &qword_100114688);
  sub_100004880(&qword_100159620, &qword_100156498, &qword_10010F558);
  sub_1000E5A70(&qword_1001595E8, &type metadata accessor for Locale);
  sub_1000E578C();
  return ForEach<>.init(_:id:content:)();
}

id sub_1000E06A0()
{
  v0 = sub_10003AE84(&qword_100155210, &qword_100111700);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v4 = *(type metadata accessor for DebugMenu() + 32);
  sub_10003AE84(&qword_100159458, &qword_100114528);
  State.wrappedValue.getter();
  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  sub_1000F64A0(v3);
  if (qword_100154370 != -1)
  {
    swift_once();
  }

  sub_1000412FC();
  v6 = [objc_opt_self() defaultCenter];
  if (qword_1001544E8 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_100160B10 object:0];

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  return [qword_100160D68 synchronize];
}

uint64_t sub_1000E08BC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v14 = 0xD00000000000001DLL;
  v15 = 0x80000001001091C0;
  v7 = *(type metadata accessor for DebugMenu() + 32);
  sub_10003AE84(&qword_100159458, &qword_100114528);
  State.wrappedValue.getter();
  v8 = Locale.identifier.getter();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v13 = v15;
  *a1 = v14;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_1000E0A34()
{
  v0 = sub_10003AE84(&qword_100155210, &qword_100111700);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1000F64A0(v3);
  if (qword_100154370 != -1)
  {
    swift_once();
  }

  sub_1000412FC();
  v5 = [objc_opt_self() defaultCenter];
  if (qword_1001544E8 != -1)
  {
    swift_once();
  }

  [v5 postNotificationName:qword_100160B10 object:0];
}

uint64_t sub_1000E0BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v13 = 0xD00000000000001FLL;
  v14 = 0x80000001001091A0;
  static Locale.current.getter();
  v7 = Locale.identifier.getter();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v12 = v14;
  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
  return result;
}

void sub_1000E0D20(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100155210, &qword_100111700);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14[-v4];
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v6 = qword_100160D68;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 stringForKey:v7];

  if (v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    v9 = type metadata accessor for Locale();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for Locale();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  }

  sub_1000035CC(v5, &qword_100155210, &qword_100111700);
  v11 = (a1 + *(type metadata accessor for DebugMenu() + 44));
  v12 = *v11;
  v13 = *(v11 + 1);
  v14[16] = v12;
  v15 = v13;
  v14[15] = v8 == 0;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.wrappedValue.setter();
  sub_100003758();
}

uint64_t sub_1000E0F60(uint64_t a1)
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D68;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 stringForKey:v3];

  if (v4)
  {
  }

  v5 = (a1 + *(type metadata accessor for DebugMenu() + 44));
  v7 = *v5;
  v8 = *(v5 + 1);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_1000E1064@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v39 = sub_10003AE84(&qword_1001595B8, &qword_100114650);
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  v4 = __chkstk_darwin(v39);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v42 = &v36 - v6;
  v7 = type metadata accessor for DebugMenu();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v41 = &v36 - v16;
  sub_1000E5564(a1, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_1000E55C8(&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  Button.init(action:label:)();
  sub_1000E5564(a1, &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_1000E55C8(&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
  Button.init(action:label:)();
  v20 = a1 + *(v8 + 44);
  v21 = *v20;
  v22 = *(v20 + 8);
  v44 = v21;
  v45 = v22;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  State.projectedValue.getter();
  sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440);
  v23 = v11;
  v24 = v42;
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  v25 = v43;
  v36 = *(v43 + 8);
  v36(v15, v11);
  v26 = *(v25 + 16);
  v43 = v25 + 16;
  v26(v15, v41, v11);
  v27 = v37;
  v28 = v38;
  v29 = *(v37 + 16);
  v30 = v39;
  v29(v38, v24, v39);
  v31 = v40;
  v26(v40, v15, v23);
  v32 = sub_10003AE84(&qword_1001595C0, &unk_100114658);
  v29(&v31[*(v32 + 48)], v28, v30);
  v33 = *(v27 + 8);
  v33(v42, v30);
  v34 = v36;
  v36(v41, v23);
  v33(v28, v30);
  return v34(v15, v23);
}

uint64_t sub_1000E1578(uint64_t a1)
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D68;
  v3 = String._bridgeToObjectiveC()();
  [v2 setBool:1 forKey:v3];

  v4 = (a1 + *(type metadata accessor for DebugMenu() + 36));
  v6 = *v4;
  v7 = *(v4 + 1);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

double sub_1000E1668@<D0>(uint64_t a1@<X8>)
{
  result = 2.40719549e199;
  *a1 = xmmword_1001142B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000E1688(uint64_t a1)
{
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D68;
  v3 = String._bridgeToObjectiveC()();
  [v2 setBool:1 forKey:v3];

  v4 = (a1 + *(type metadata accessor for DebugMenu() + 36));
  v6 = *v4;
  v7 = *(v4 + 1);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

void sub_1000E1778(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x8000000100109160;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
}

uint64_t sub_1000E17A8()
{
  v0 = sub_10003AE84(&qword_100155898, &unk_10010DB80);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  static ButtonRole.destructive.getter();
  v4 = type metadata accessor for ButtonRole();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  return Button.init(role:action:label:)();
}

void sub_1000E18AC()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 terminateWithSuccess];
}

double sub_1000E190C@<D0>(uint64_t a1@<X8>)
{
  result = 1.81982557e-306;
  *a1 = xmmword_1001142C0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000E192C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v39 = sub_10003AE84(&qword_100159568, &qword_100114618);
  v49 = *(v39 - 8);
  v3 = v49[8];
  v4 = __chkstk_darwin(v39);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v34 - v6;
  v7 = sub_10003AE84(&qword_100159570, &qword_100114620);
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = v47[8];
  v9 = __chkstk_darwin(v7);
  v45 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = &v34 - v11;
  v44 = sub_10003AE84(&qword_100159578, &qword_100114628);
  v43 = *(v44 - 8);
  v12 = v43[8];
  v13 = __chkstk_darwin(v44);
  v42 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  *&v53 = 0xD000000000000014;
  *(&v53 + 1) = 0x8000000100109120;
  v54 = 0;
  v55 = _swiftEmptyArrayStorage;
  v52 = a1;
  sub_10003AE84(&qword_100159580, &qword_100114630);
  sub_100004880(&qword_100159588, &qword_100159580, &qword_100114630);
  v37 = v16;
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v51 = a1;
  sub_10003AE84(&qword_100159590, &qword_100114638);
  sub_100004880(&qword_100159598, &qword_100159590, &qword_100114638);
  v17 = v41;
  Section<>.init(_:content:)();
  v53 = xmmword_1001142D0;
  v54 = 0;
  v55 = _swiftEmptyArrayStorage;
  v50 = a1;
  sub_10003AE84(&qword_1001595A0, &qword_100114640);
  sub_100004880(&qword_1001595A8, &qword_1001595A0, &qword_100114640);
  v18 = v46;
  Section<>.init(header:content:)();
  v19 = v43[2];
  v20 = v42;
  v21 = v44;
  v19(v42, v16, v44);
  v36 = v47[2];
  v22 = v45;
  v36(v45, v17, v48);
  v35 = v49[2];
  v23 = v38;
  v24 = v18;
  v25 = v39;
  v35(v38, v24, v39);
  v26 = v40;
  v19(v40, v20, v21);
  v27 = sub_10003AE84(&qword_1001595B0, &qword_100114648);
  v28 = v48;
  v36(&v26[*(v27 + 48)], v22, v48);
  v35(&v26[*(v27 + 64)], v23, v25);
  v29 = v49[1];
  v29(v46, v25);
  v30 = v47[1];
  v30(v41, v28);
  v31 = v43[1];
  v32 = v44;
  v31(v37, v44);
  v29(v23, v25);
  v30(v45, v28);
  return (v31)(v42, v32);
}

void sub_1000E1F74()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v15 - v7;
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v11 = qword_100160D68;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 stringForKey:v12];

  if (v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    (*(v1 + 32))(v10, v8, v0);
    v14 = *(type metadata accessor for DebugMenu() + 32);
    (*(v1 + 16))(v5, v10, v0);
    sub_10003AE84(&qword_100159458, &qword_100114528);
    State.wrappedValue.setter();
    (*(v1 + 8))(v10, v0);
  }
}

uint64_t sub_1000E21CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10003AE84(&qword_100159678, &qword_100114740);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v38 - v5;
  v7 = sub_10003AE84(&qword_100159680, &qword_100114748);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = v38 - v10;
  v12 = sub_10003AE84(&qword_100159688, &qword_100114750);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = v38 - v15;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v17 = *(sub_10003AE84(&qword_100159690, &qword_100114758) + 44);
  Label.init(title:icon:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000D5B8(v6, v11, &qword_100159678, &qword_100114740);
  v18 = &v11[*(v8 + 44)];
  v19 = v38[5];
  *(v18 + 4) = v38[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v38[6];
  v20 = v38[1];
  *v18 = v38[0];
  *(v18 + 1) = v20;
  v21 = v38[3];
  *(v18 + 2) = v38[2];
  *(v18 + 3) = v21;
  v22 = static Alignment.trailing.getter();
  v24 = v23;
  v25 = &v16[*(v13 + 44)];
  sub_1000E2538(v1, v25);
  v26 = &v25[*(sub_10003AE84(&qword_100159698, &unk_100114760) + 36)];
  *v26 = v22;
  v26[1] = v24;
  sub_10000D5B8(v11, v16, &qword_100159680, &qword_100114748);
  v27 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100038F54(v16, a1);
  result = sub_10003AE84(&qword_100159538, &qword_100114600);
  v37 = a1 + *(result + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  return result;
}

double sub_1000E24D0@<D0>(uint64_t a1@<X8>)
{
  result = 9.44228059e179;
  *a1 = xmmword_1001142E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &_swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000E24F0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000E2538@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for BorderlessButtonStyle();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DebugMenu();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = type metadata accessor for ButtonRole();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10003AE84(&qword_100158350, &qword_100112900);
  v13 = *(v12 - 8);
  v36 = v12;
  v37 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = sub_10003AE84(&qword_1001596A0, &qword_100114770);
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  static ButtonRole.confirm.getter();
  sub_1000E5564(a1, &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  sub_1000E55C8(&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  Button<>.init(role_v1:action:)();
  v27 = v38;
  BorderlessButtonStyle.init()();
  sub_100004880(&qword_100158348, &qword_100158350, &qword_100112900);
  sub_1000E5A70(&qword_1001596A8, &type metadata accessor for BorderlessButtonStyle);
  v28 = v36;
  v29 = v39;
  View.buttonStyle<A>(_:)();
  (*(v40 + 8))(v27, v29);
  (*(v37 + 8))(v16, v28);
  v30 = v18[2];
  v30(v22, v24, v17);
  v31 = v41;
  *v41 = 0;
  *(v31 + 8) = 1;
  v32 = v31;
  v33 = sub_10003AE84(&qword_1001596B0, &qword_100114778);
  v30(&v32[*(v33 + 48)], v22, v17);
  v34 = v18[1];
  v34(v24, v17);
  return (v34)(v22, v17);
}

uint64_t sub_1000E299C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v7 = v12;
  }

  if (*(v7 + 51))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v11 - 2) = v7;
    *(&v11 - 8) = 0;
    v12 = v7;
    sub_1000E5A70(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v7 + 51) = 0;
  }
}

uint64_t sub_1000E2BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for DebugMenu();
  v46 = *(v3 - 8);
  v45 = *(v46 + 64);
  __chkstk_darwin(v3 - 8);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GroupedFormStyle();
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10003AE84(&qword_100159528, &qword_1001145F0);
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v40);
  v13 = &v38 - v12;
  v14 = sub_10003AE84(&qword_100159530, &qword_1001145F8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14);
  v41 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  v21 = sub_10003AE84(&qword_100159538, &qword_100114600);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v25 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v38 - v26;
  v39 = a1;
  sub_1000E21CC(&v38 - v26);
  v48 = a1;
  sub_10003AE84(&qword_100159540, &qword_100114608);
  sub_100004880(&qword_100159548, &qword_100159540, &qword_100114608);
  Form.init(content:)();
  static FormStyle<>.grouped.getter();
  sub_100004880(&qword_100159550, &qword_100159528, &qword_1001145F0);
  sub_1000E5A70(&qword_100159558, &type metadata accessor for GroupedFormStyle);
  v28 = v40;
  v29 = v42;
  View.formStyle<A>(_:)();
  (*(v43 + 8))(v9, v29);
  (*(v10 + 8))(v13, v28);
  v30 = v44;
  sub_1000E5564(v39, v44);
  v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v32 = swift_allocObject();
  sub_1000E55C8(v30, v32 + v31);
  v33 = &v20[*(v15 + 44)];
  *v33 = sub_1000E562C;
  v33[1] = v32;
  v33[2] = 0;
  v33[3] = 0;
  sub_100008E68(v27, v25, &qword_100159538, &qword_100114600);
  v34 = v41;
  sub_100008E68(v20, v41, &qword_100159530, &qword_1001145F8);
  v35 = v47;
  sub_100008E68(v25, v47, &qword_100159538, &qword_100114600);
  v36 = sub_10003AE84(&qword_100159560, &qword_100114610);
  sub_100008E68(v34, v35 + *(v36 + 48), &qword_100159530, &qword_1001145F8);
  sub_1000035CC(v20, &qword_100159530, &qword_1001145F8);
  sub_1000035CC(v27, &qword_100159538, &qword_100114600);
  sub_1000035CC(v34, &qword_100159530, &qword_1001145F8);
  return sub_1000035CC(v25, &qword_100159538, &qword_100114600);
}

uint64_t sub_1000E30E4@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10003AE84(&qword_100159518, &qword_1001145E0);
  sub_1000E2BC0(v1, a1 + *(v3 + 44));
  v4 = *(sub_10003AE84(&qword_100159520, &qword_1001145E8) + 36);
  v5 = enum case for ColorScheme.dark(_:);
  v6 = type metadata accessor for ColorScheme();
  v9 = *(v6 - 8);
  (*(v9 + 104))(a1 + v4, v5, v6);
  v7 = *(v9 + 56);

  return v7(a1 + v4, 0, 1, v6);
}

Swift::Int sub_1000E31F0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000ADFA0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000E325C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000E325C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000E3424(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000E3354(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000E3354(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000E3424(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1000ADD08(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000E3A00((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AC57C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1000AC57C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1000E3A00((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1000ADD08(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1000ADC7C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1000E3A00(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000E3C28(unint64_t a1, int a2, char a3)
{
  LOBYTE(v3) = a3;
  v153 = a2;
  v169 = type metadata accessor for Date();
  v5 = *(v169 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v169);
  v152 = v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v165 = v126 - v10;
  __chkstk_darwin(v9);
  v167 = v126 - v11;
  v151 = type metadata accessor for UUID();
  v12 = *(v151 - 8);
  v13 = v12[8];
  __chkstk_darwin(v151);
  v166 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for CalculateExpression.Base();
  p_name = *(v164 - 8);
  v16 = p_name[8];
  __chkstk_darwin(v164);
  v163 = v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546A0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v18 = qword_100160D00;
    swift_getKeyPath();
    v171 = v18;
    sub_1000E5A70(&qword_1001551D8, type metadata accessor for CalculatorUnitConversionDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = [*(v18 + 16) categories];
    sub_1000050A0(0, &qword_1001551E0, CalculateUnitCategory_ptr);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3)
    {
      break;
    }

    v171 = &_swiftEmptyArrayStorage;
    v21 = v20;
    if (v20 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
LABEL_20:
        v20 = &_swiftEmptyArrayStorage;
LABEL_21:

        break;
      }
    }

    else
    {
      v3 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_20;
      }
    }

    v162 = p_name;
    v168 = v12;
    v170 = v5;
    v160 = a1;
    v22 = 0;
    a1 = v20 & 0xC000000000000001;
    v5 = v20 & 0xFFFFFFFFFFFFFF8;
    p_name = &stru_100152FF8.name;
    while (1)
    {
      if (a1)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v5 + 16))
        {
          goto LABEL_17;
        }

        v24 = *(v21 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if ([v24 unitType] == 16)
      {
      }

      else
      {
        v12 = v21;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v23 = *(v171 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v22;
      if (v26 == v3)
      {
        v20 = v171;
        a1 = v160;
        v5 = v170;
        v12 = v168;
        p_name = v162;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v176 = &_swiftEmptyArrayStorage;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_65;
  }

  v129 = v20;
  if (!a1)
  {
    v5 = &_swiftEmptyArrayStorage;
LABEL_58:

    swift_arrayDestroy();
    if (qword_100154370 != -1)
    {
      goto LABEL_66;
    }

    goto LABEL_59;
  }

  v27 = 0;
  v148 = 0;
  LODWORD(v162) = enum case for CalculateExpression.Base.base10(_:);
  v161 = (p_name + 13);
  v159 = (v5 + 16);
  v149 = (v12 + 1);
  v158 = (v5 + 8);
  v28 = v20 & 0xFFFFFFFFFFFFFF8;
  v150 = v20 & 0xFFFFFFFFFFFFFF8;
  if (v20 < 0)
  {
    v28 = v20;
  }

  v126[1] = v28;
  v128 = v20 & 0xC000000000000001;
  v170 = &unk_1001490A0;
  v29 = &unk_1001490A8;
  v127 = v20 + 32;
  v5 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v175 = v27;
    v171 = dispatch thunk of CustomStringConvertible.description.getter();
    v172 = v31;
    v32 = v170[-10 * (v27 / 5uLL)];
    v168 = v29;
    v33 = v29[-10 * (v27 / 5uLL)];

    v34._countAndFlagsBits = v32;
    v34._object = v33;
    String.append(_:)(v34);

    v175 = a1;
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    v36 = *v161;
    (*v161)(v163, v162, v164);
    UUID.init()();
    v37 = type metadata accessor for CalculateExpression();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = CalculateExpression.init(_:options:base:id:)();
    v41 = CalculateExpression.result.getter();
    if (v41)
    {
      break;
    }

    v30 = v168;
LABEL_28:
    v170 += 2;
    v29 = v30 + 2;
    ++v27;
    if (!--a1)
    {
      goto LABEL_58;
    }
  }

  v42 = v41;
  Date.init(timeIntervalSinceNow:)();
  v160 = a1;
  v157 = v40;
  v156 = v42;
  if (v153 & 1) == 0 || (v27)
  {
    LODWORD(v144) = CalculateExpression.assumeDegrees.getter();
    v146 = CalculateExpression.expression.getter();
    v145 = v54;
    v55 = [v42 formattedResult];
    v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v147 = v56;

    v155 = *v159;
    v155(v165, v167, v169);
    v57 = v166;
    UUID.init()();
    v58 = UUID.uuidString.getter();
    v60 = v59;
    (*v149)(v57, v151);
    v61 = type metadata accessor for SchemaV1.HistoryRecord();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    v64 = swift_allocObject();
    *(v64 + 48) = sub_10003AE84(&qword_100156228, &qword_100114350);
    v65 = sub_1000E5A70(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
    v171 = v61;
    v172 = v61;
    v173 = v65;
    v174 = v65;
    *(v64 + 56) = swift_getOpaqueTypeConformance2();
    sub_100019850((v64 + 24));
    static PersistentModel.createBackingData<A>()();
    v66 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    v171 = 0x6369736162;
    v172 = 0xE500000000000000;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v67 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v68 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v69 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v64 + 16) = 257;
    ObservationRegistrar.init()();
    v70 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    v171 = v58;
    v172 = v60;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v71 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    v171 = 0x6669746E65696373;
    v172 = 0xEA00000000006369;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v72 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v73 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = v144 & 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v74 = sub_100080254(v146);
    v76 = v75;

    v77 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    v171 = v74;
    v172 = v76;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v78 = sub_100080254(v154);
    v80 = v79;

    v81 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    v171 = v78;
    v172 = v80;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v82 = v152;
    v83 = v165;
    v84 = v169;
    v155(v152, v165, v169);
    v85 = *(v64 + 56);
    sub_100017F20((v64 + 24), *(v64 + 48));
    swift_getKeyPath();
    sub_1000E5A70(&qword_100155650, &type metadata accessor for Date);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v86 = *v158;
    (*v158)(v82, v84);
    v86(v83, v84);
LABEL_48:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    a1 = v160;
    v30 = v168;
    if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v124 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v86(v167, v169);
    v5 = v176;
    goto LABEL_28;
  }

  if (!(v129 >> 62))
  {
    v43 = *(v150 + 16);
    if (!v43)
    {
      goto LABEL_60;
    }

    goto LABEL_34;
  }

  v43 = _CocoaArrayWrapper.endIndex.getter();
  if (v43)
  {
LABEL_34:
    v44 = v27 % v43;
    if (v128)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v44 >= *(v150 + 16))
      {
        goto LABEL_62;
      }

      v45 = *(v127 + 8 * v44);
    }

    v46 = v45;
    v47 = [v45 units];
    sub_1000050A0(0, &qword_100155290, CalculateUnit_ptr);
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v48 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v5 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_61;
      }
    }

    v147 = v46;
    v49 = v27 % v5;
    if ((v48 & 0xC000000000000001) != 0)
    {
      v155 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v154 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v50 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v49 >= v50)
      {
        goto LABEL_63;
      }

      v5 = (v27 + 1) % v5;
      v155 = *(v48 + 32 + 8 * v49);
      if (v5 >= v50)
      {
        goto LABEL_64;
      }

      v154 = *(v48 + 32 + 8 * v5);
    }

    v51 = [v155 category];
    v143 = v27;
    if (v51)
    {
      v52 = v51;
      v53 = [v51 unitType];

      v136 = v53 == 16;
    }

    else
    {
      v136 = 0;
    }

    [v42 setSynchronous:1];
    v146 = CalculateResult.converted(to:from:)();
    CalculateExpression.error.getter();
    sub_1000DC17C(&_swiftEmptyArrayStorage);
    v36(v163, v162, v164);
    v87 = v166;
    UUID.init()();
    v145 = CalculateExpression.__allocating_init(result:error:options:base:id:)();
    v133 = CalculateExpression.assumeDegrees.getter();
    v135 = CalculateExpression.expression.getter();
    v134 = v88;
    v138 = CalculateExpression.expression.getter();
    v137 = v89;
    v139 = *v159;
    v139(v165, v167, v169);
    v141 = CalculateUnit.id.getter();
    v131 = v90;
    v142 = CalculateUnit.id.getter();
    v144 = v91;
    UUID.init()();
    v130 = UUID.uuidString.getter();
    v93 = v92;
    (*v149)(v87, v151);
    v94 = type metadata accessor for SchemaV1.HistoryRecord();
    v95 = *(v94 + 48);
    v96 = *(v94 + 52);
    v97 = swift_allocObject();
    *(v97 + 48) = sub_10003AE84(&qword_100156228, &qword_100114350);
    v140 = type metadata accessor for SchemaV1.HistoryRecord;
    v98 = sub_1000E5A70(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
    v171 = v94;
    v172 = v94;
    v173 = v98;
    v174 = v98;
    *(v97 + 56) = swift_getOpaqueTypeConformance2();
    sub_100019850((v97 + 24));
    static PersistentModel.createBackingData<A>()();
    v99 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    v171 = 0x6369736162;
    v172 = 0xE500000000000000;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v100 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v101 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v102 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    *(v97 + 16) = 257;
    v132 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
    ObservationRegistrar.init()();
    v103 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    v171 = v130;
    v172 = v93;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v104 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    v171 = 0x6669746E65696373;
    v172 = 0xEA00000000006369;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v105 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = 0;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v106 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = v136;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v107 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    LOBYTE(v171) = v133 & 1;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v108 = sub_100080254(v135);
    v110 = v109;

    v111 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    v171 = v108;
    v172 = v110;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v112 = sub_100080254(v138);
    v114 = v113;

    v115 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    v171 = v112;
    v172 = v114;
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v116 = v152;
    v117 = v169;
    v139(v152, v165, v169);
    v118 = *(v97 + 56);
    sub_100017F20((v97 + 24), *(v97 + 48));
    swift_getKeyPath();
    sub_1000E5A70(&qword_100155650, &type metadata accessor for Date);
    dispatch thunk of BackingData.setValue<A>(forKey:to:)();

    v86 = *v158;
    (*v158)(v116, v117);
    v171 = v97;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v120 = v141;
    v126[-4] = v97;
    v126[-3] = v120;
    v126[-2] = v131;
    sub_1000E5A70(&qword_100154BC0, v140);
    v121 = v148;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v171 = v97;
    v122 = swift_getKeyPath();
    __chkstk_darwin(v122);
    v123 = v142;
    v126[-4] = v97;
    v126[-3] = v123;
    v126[-2] = v144;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v148 = v121;

    v86(v165, v169);
    v27 = v143;
    goto LABEL_48;
  }

LABEL_60:
  __break(1u);
LABEL_61:
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
  swift_once();
LABEL_59:
  sub_100047678(v5, 1);
}

uint64_t sub_1000E54D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100079348();
}

uint64_t sub_1000E54F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1000794C4();
}

uint64_t sub_1000E5564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMenu();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E55C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMenu();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E5674(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DebugMenu() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000E5708()
{
  result = qword_1001595F0;
  if (!qword_1001595F0)
  {
    sub_10003AECC(&qword_1001595E0, &qword_100114680);
    sub_1000E578C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001595F0);
  }

  return result;
}

unint64_t sub_1000E578C()
{
  result = qword_1001595F8;
  if (!qword_1001595F8)
  {
    sub_10003AECC(&qword_100159600, &qword_100114688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001595F8);
  }

  return result;
}

uint64_t sub_1000E58D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000E58F8()
{
  v1 = (type metadata accessor for DebugMenu() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = v3[3];

  v6 = v3[4];

  v7 = v3[6];

  v8 = v3[8];

  v9 = v3 + v1[10];
  v10 = type metadata accessor for Locale();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *&v9[*(sub_10003AE84(&qword_100159458, &qword_100114528) + 28)];

  v12 = *(v3 + v1[11] + 8);

  v13 = *(v3 + v1[12]);

  v14 = *(v3 + v1[13] + 8);

  return swift_deallocObject();
}

uint64_t sub_1000E5A70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000E5AB8()
{
  result = qword_1001596C8;
  if (!qword_1001596C8)
  {
    sub_10003AECC(&qword_100159520, &qword_1001145E8);
    sub_100004880(&qword_1001596D0, &qword_1001596D8, &qword_1001147E0);
    sub_100004880(&qword_1001596E0, &qword_1001596E8, &qword_1001147E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001596C8);
  }

  return result;
}

uint64_t sub_1000E5BD8(uint64_t a1, int a2)
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

uint64_t sub_1000E5BF8(uint64_t result, int a2, int a3)
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

uint64_t sub_1000E5C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v31 = a1;
  v34 = a2;
  v10 = type metadata accessor for HighlightHoverEffect();
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10003AE84(&qword_1001597B8, &qword_100114978);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  sub_10003AE84(&qword_100158470, &qword_100114980);
  v19 = *(type metadata accessor for ContentShapeKinds() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10010F520;
  static ContentShapeKinds.interaction.getter();
  static ContentShapeKinds.accessibility.getter();
  static ContentShapeKinds.hoverEffect.getter();
  v35 = v22;
  v23 = &v18[*(v15 + 36)];
  v24 = *(sub_10003AE84(&qword_1001597C0, &qword_100114988) + 40);
  sub_1000E60DC(&qword_100158480, &type metadata accessor for ContentShapeKinds);
  sub_10003AE84(&qword_100158488, &qword_100114990);
  sub_100004880(&qword_100158490, &qword_100158488, &qword_100114990);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static UnitPoint.center.getter();
  *v23 = a6;
  *(v23 + 1) = a3;
  *(v23 + 2) = a4;
  *(v23 + 3) = a5;
  *(v23 + 4) = a5;
  *(v23 + 5) = v25;
  *(v23 + 6) = v26;
  v23[56] = 0;
  v27 = sub_10003AE84(&qword_1001597C8, &qword_100114998);
  (*(*(v27 - 8) + 16))(v18, v31, v27);
  static CustomHoverEffect<>.highlight.getter();
  sub_1000E5FF8();
  sub_1000E60DC(&qword_1001597E8, &type metadata accessor for HighlightHoverEffect);
  v28 = v32;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v33 + 8))(v14, v28);
  return sub_1000E6124(v18);
}

unint64_t sub_1000E5FF8()
{
  result = qword_1001597D0;
  if (!qword_1001597D0)
  {
    sub_10003AECC(&qword_1001597B8, &qword_100114978);
    sub_100004880(&qword_1001597D8, &qword_1001597C8, &qword_100114998);
    sub_100004880(&qword_1001597E0, &qword_1001597C0, &qword_100114988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001597D0);
  }

  return result;
}

uint64_t sub_1000E60DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E6124(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_1001597B8, &qword_100114978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for InsettableRoundendRectangle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InsettableRoundendRectangle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

double sub_1000E623C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = type metadata accessor for RoundedCornerStyle();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectInset(v23, -v5[1], -v5[2]);
  (*(v12 + 104))(v15, enum case for RoundedCornerStyle.circular(_:), v11);
  Path.init(roundedRect:cornerRadius:style:)();
  result = *&v20;
  v18 = v21;
  *a1 = v20;
  *(a1 + 16) = v18;
  *(a1 + 32) = v22;
  return result;
}

void (*sub_1000E63C0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100081EC0;
}

uint64_t sub_1000E6448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E660C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000E64AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E660C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000E6510(uint64_t a1)
{
  v2 = sub_1000E660C();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_1000E6560()
{
  result = qword_100159800;
  if (!qword_100159800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159800);
  }

  return result;
}

unint64_t sub_1000E65B8()
{
  result = qword_100159808;
  if (!qword_100159808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159808);
  }

  return result;
}

unint64_t sub_1000E660C()
{
  result = qword_100159810[0];
  if (!qword_100159810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100159810);
  }

  return result;
}

void sub_1000E6660()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() iconWithSystemImageName:v0];

  qword_100160D90 = v1;
}

void sub_1000E66D0()
{
  sub_10001B8B8();
  if (v0 <= 0x3F)
  {
    sub_100002B70();
    if (v1 <= 0x3F)
    {
      sub_100013FF4(319, &qword_100156648, type metadata accessor for CalculatorViewModel);
      if (v2 <= 0x3F)
      {
        sub_100013FF4(319, &qword_1001557F0, type metadata accessor for CalculatorLayout);
        if (v3 <= 0x3F)
        {
          sub_10001BA80();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 sub_1000E67FC@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100006650(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = v3[6];
  *a2 = result;
  return result;
}

uint64_t sub_1000E68CC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  sub_10003AE84(&qword_100157830, qword_100111DF0);
  FocusState.Binding.projectedValue.getter();
  return v4;
}

uint64_t sub_1000E6930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v47 = a4;
  v41 = a2;
  v42 = a3;
  v7 = type metadata accessor for CalculatorStandardDisplayView();
  v8 = *(v7 - 8);
  v38 = *(v8 + 64);
  __chkstk_darwin(v7);
  v39 = &v38 - v9;
  v44 = type metadata accessor for TapGesture();
  v43 = *(v44 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v44);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10003AE84(&qword_100159998, &qword_100114D40);
  v45 = *(v46 - 8);
  v13 = *(v45 + 64);
  __chkstk_darwin(v46);
  v15 = &v38 - v14;
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v7 + 44);
  v40 = a1;
  v22 = (a1 + v21);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v53 = *v22;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v20, v16);
    v23 = v53;
  }

  v25 = *(v23 + 16);
  swift_getKeyPath();
  *&v51[0] = v25;
  sub_100006650(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(v25 + 32);

  if (qword_100154538 != -1)
  {
    swift_once();
  }

  v27 = qword_100160B60;
  type metadata accessor for CalculatorViewModel();
  sub_100006650(&qword_100154FA8, type metadata accessor for CalculatorViewModel);

  v28 = Environment.init<A>(_:)();
  v54 = v29 & 1;
  *&v48 = v28;
  BYTE8(v48) = v29 & 1;
  v49 = v26;
  *v50 = v27;
  v50[8] = 0;
  *&v50[16] = a5;
  v50[24] = 0;
  TapGesture.init(count:)();
  v30 = v39;
  (*(v8 + 16))(v39, v40, v7);
  v31 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v32 = swift_allocObject();
  v33 = v42;
  *(v32 + 16) = v41;
  *(v32 + 24) = v33;
  (*(v8 + 32))(v32 + v31, v30, v7);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1000E7AB0;
  *(v34 + 24) = v32;
  v35 = v44;
  Gesture.onEnded(_:)();

  (*(v43 + 8))(v12, v35);
  static GestureMask.all.getter();
  sub_10003AE84(&qword_1001599A0, &qword_100114D48);
  sub_1000E7B60();
  sub_100004880(qword_1001599B8, &qword_100159998, &qword_100114D40);
  v36 = v46;
  View.simultaneousGesture<A>(_:including:)();
  (*(v45 + 8))(v15, v36);
  v51[0] = v48;
  v51[1] = v49;
  v52[0] = *v50;
  *(v52 + 9) = *&v50[9];
  return sub_1000035CC(v51, &qword_1001599A0, &qword_100114D48);
}

uint64_t sub_1000E6F88()
{
  static Animation.easeOut.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000E7004(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for CalculatorStandardDisplayView() + 44));
  v8 = *v7;
  v9 = *(v7 + 8);

  if (v9 == 1)
  {
  }

  else
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v11 = *(v3 + 8);
    v11(v6, v2);

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v11(v6, v2);
    v8 = v19;
  }

  v13 = *(v8 + 16);
  swift_getKeyPath();
  v19 = v13;
  sub_100006650(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + 32);

  v15 = CalculateExpression.expression.getter();
  sub_100056D2C(v15, v16, 0, 0, 0, 0);
}

uint64_t sub_1000E72CC(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for CalculatorStandardDisplayView() + 44));
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v8 = v14;
  }

  swift_getKeyPath();
  v14 = v8;
  sub_100006650(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + 54) != 11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v13 - 2) = v8;
    *(&v13 - 8) = 11;
    v14 = v8;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000E7568@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = v5;
  v24 = a5;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10003AE84(a1, a2);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v23 - v18);
  sub_100008E68(v10, &v23 - v18, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10000D5B8(v19, v24, a3, a4);
  }

  v21 = *v19;
  static os_log_type_t.fault.getter();
  v22 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1000E775C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for CalculatorStandardDisplayView();
  v4 = *(*(v3 - 1) + 64);
  v5 = v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80));
  v6 = *(v5 + 8);

  v7 = v3[9];
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    v10 = *(v5 + v7);
  }

  v11 = v3[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
    v14 = *(v5 + v11);
  }

  v15 = *(v5 + v3[11]);

  v16 = *(v5 + v3[12]);

  v17 = (v5 + v3[13]);
  v18 = *v17;

  v19 = v17[1];

  return swift_deallocObject();
}

uint64_t sub_1000E79E4(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, __n128))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for CalculatorStandardDisplayView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6.n128_u64[0] = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v5, v2, v3, v6);
}

uint64_t sub_1000E7AC8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for CalculatorStandardDisplayView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

unint64_t sub_1000E7B60()
{
  result = qword_1001599A8;
  if (!qword_1001599A8)
  {
    sub_10003AECC(&qword_1001599A0, &qword_100114D48);
    sub_100023954();
    sub_100004880(&qword_1001553E0, &qword_1001553E8, &qword_10010FA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001599A8);
  }

  return result;
}