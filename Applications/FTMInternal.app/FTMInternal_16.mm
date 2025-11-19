id sub_100206A1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100206D50(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  type metadata accessor for TickerColumnCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    v8 = (v1 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue);
    v9 = *(v1 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue);
    v10 = *(v1 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue + 8);

    IndexPath.row.getter();
    String.index(_:offsetBy:)();
    String.subscript.getter();

    Character.write<A>(to:)();

    v12 = *(v1 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_numericAlphabet);
    __chkstk_darwin(v11);
    v25[2] = v26;
    if ((sub_1001E2ED0(sub_1002071E0, v25, v12) & 1) == 0)
    {
      sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1002EED40;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0xE000000000000000;
      v22 = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
LABEL_14:
      *(v7 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_size) = v22;
      v24 = *(v7 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_characters);
      *(v7 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_characters) = v12;

      [*(v7 + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView) reloadData];
      return v7;
    }

    sub_1001A551C(&qword_100377110, &qword_1002F22D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002EED50;
    v14 = *v8;
    v15 = v8[1];

    v16 = String.count.getter();

    if (__OFSUB__(v16, 1))
    {
      __break(1u);
    }

    else
    {
      *(inited + 32) = v16 - 1;
      v18 = *v8;
      v19 = v8[1];

      v20 = String.count.getter();

      if (!__OFSUB__(v20, 2))
      {
        *(inited + 40) = v20 - 2;
        v21 = IndexPath.row.getter();
        if (*(inited + 32) == v21 || *(inited + 40) == v21)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

    v23 = objc_allocWithZone(UICollectionViewCell);

    return [v23 init];
  }

  return result;
}

void sub_100207200()
{
  *(v0 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_numericAlphabet) = &off_10031A4E8;
  v1 = OBJC_IVAR____TtC11FTMInternal20TickerViewController_collectionView;
  v2 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v2 setScrollDirection:1];
  [v2 setMinimumInteritemSpacing:0.0];
  [v2 setMinimumLineSpacing:0.0];
  v3 = [objc_allocWithZone(UICollectionView) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *(v0 + v1) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10020730C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue);
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal20TickerViewController_stringValue + 8);

  v3 = String.count.getter();

  result = IndexPath.row.getter();
  if (result)
  {
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      if (v3 - 1 == result)
      {
        return result;
      }

      if (!__OFSUB__(v3, 2))
      {
        if (v3 - 2 == result || !__OFSUB__(v3, 3))
        {
          return result;
        }

LABEL_10:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1002073C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100207444(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  __chkstk_darwin(v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100207864(uint64_t a1)
{
  v6 = *(v1 + 24);
  v7 = *(v1 + 40);
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  Binding.projectedValue.getter();
  return v5;
}

uint64_t sub_1002078C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1001A55C8(&qword_100377530, &qword_1002F2780);
  v5 = *(a1 + 32);
  v20 = *(a1 + 16);
  v21 = v5;
  v6 = type metadata accessor for SMultiselectionPickerList(255, &v20);
  v7 = sub_1001AD0C8(&qword_100377538, &qword_100377530, &qword_1002F2780);
  WitnessTable = swift_getWitnessTable();
  *&v20 = v4;
  *(&v20 + 1) = v6;
  *&v21 = v7;
  *(&v21 + 1) = WitnessTable;
  v9 = type metadata accessor for NavigationLink();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  sub_100207ABC(a1);
  swift_getWitnessTable();
  v17 = v10[2];
  v17(v16, v14, v9);
  v18 = v10[1];
  v18(v14, v9);
  v17(a2, v16, v9);
  return (v18)(v16, v9);
}

uint64_t sub_100207ABC(void *a1)
{
  v1 = a1[3];
  v8 = a1[2];
  v9 = v1;
  v2 = a1[5];
  v10 = a1[4];
  v11 = v2;
  v6[2] = v8;
  v6[3] = v1;
  v6[4] = v10;
  v6[5] = v2;
  v3 = sub_1001A551C(&qword_100377530, &qword_1002F2780);
  v12[0] = v8;
  v12[1] = v1;
  v12[2] = v10;
  v12[3] = v2;
  v4 = type metadata accessor for SMultiselectionPickerList(0, v12);
  sub_1001AD0C8(&qword_100377538, &qword_100377530, &qword_1002F2780);
  swift_getWitnessTable();
  return sub_100208298(sub_1002083BC, v7, sub_1002083CC, v6, v3, v4);
}

uint64_t sub_100207BE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];

  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v14 = type metadata accessor for SMultiselectionPicker(0, &v28);
  v36 = sub_100207864(v14);
  v37 = v15;
  v35 = v13;
  v34[0] = v12;
  v34[1] = v11;
  v22 = v12;
  v23 = v11;
  v24 = v13;
  v25 = v36;
  v26 = v16;
  v27 = v15;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v17 = type metadata accessor for SMultiselectionPickerList(0, &v28);
  swift_getWitnessTable();
  v18 = *(*(v17 - 8) + 16);
  v18(&v28, &v22, v17);
  sub_100209DFC(v34);
  v19 = type metadata accessor for Array();
  (*(*(v19 - 8) + 8))(&v35, v19);
  sub_100209E50(&v36);

  v20 = type metadata accessor for Set();
  (*(*(v20 - 8) + 8))(&v37, v20);
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v18(a6, &v22, v17);
}

uint64_t sub_100207DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = static VerticalAlignment.center.getter();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v12 = sub_1001A551C(&qword_100377540, &qword_1002F2788);
  return sub_100207E68(a1, a2, a3, a4, a5, a6 + *(v12 + 44));
}

uint64_t sub_100207E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a4;
  v28 = a2;
  v26 = a1;
  v29 = a6;
  v10 = sub_1001A551C(&qword_100377548, &qword_1002F2790);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v14 = type metadata accessor for SMultiselectionPicker(0, &v30);
  sub_10020804C(v14, &v30);
  v15 = v31;
  v25 = v30;
  v16 = v32;
  v17 = v33;
  KeyPath = swift_getKeyPath();
  v19 = &v13[*(v10 + 36)];
  v20 = *(sub_1001A551C(&qword_100377550, &qword_1002F27C8) + 28);
  v21 = enum case for Text.TruncationMode.tail(_:);
  v22 = type metadata accessor for Text.TruncationMode();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  *v13 = v25;
  *(v13 + 1) = v15;
  v13[16] = v16;
  *(v13 + 3) = v17;
  *(v13 + 4) = KeyPath;
  *(v13 + 5) = 1;
  v13[48] = 0;
  sub_1002083DC(v14);
  Set.count.getter();

  sub_100209C10();
  View.badge(_:)();
  return sub_1001AC99C(v13, &qword_100377548, &qword_1002F2790);
}

uint64_t sub_10020804C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002083DC(a1);
  v4 = a1[2];
  v5 = a1[4];
  v6 = Set.isEmpty.getter();

  if (v6)
  {
    v7 = 0xED00006465746365;
    v8 = 0x6C657320656E6F4ELL;
  }

  else
  {
    v26 = sub_1002083DC(a1);
    __chkstk_darwin(v26);
    v9 = a1[3];
    v22 = v4;
    v23 = v9;
    v10 = a1[5];
    KeyPath = swift_getKeyPath();
    v22 = v9;
    v23 = v5;
    v24 = v10;
    v25 = __chkstk_darwin(KeyPath);
    v12 = type metadata accessor for Set();
    WitnessTable = swift_getWitnessTable();
    v15 = sub_100207444(sub_100209DD0, &v21, v12, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v14);

    v26 = v15;
    sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
    sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80);
    v8 = BidirectionalCollection<>.joined(separator:)();
    v7 = v16;
  }

  v26 = v8;
  v27 = v7;
  sub_1001A56A0();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v18;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v20;
  return result;
}

uint64_t sub_100208298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a6 - 8) + 64);
  v7 = __chkstk_darwin(a1);
  v7();
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_100208368@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_1002078C8(a1, a2);
}

uint64_t sub_1002083DC(uint64_t a1)
{
  v6 = *(v1 + 24);
  v7 = *(v1 + 40);
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  type metadata accessor for Set();
  type metadata accessor for Binding();
  Binding.wrappedValue.getter();
  return v5;
}

uint64_t sub_10020843C@<X0>(uint64_t a1@<X0>, __int8 *a2@<X8>)
{
  v3 = v2;
  v48.i64[0] = a1;
  v47 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Array();
  v7 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v46 = sub_1001A55C8(&qword_100377608, &qword_1002F2928);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ForEach();
  v44 = sub_1001AD0C8(&qword_100377610, &qword_100377608, &qword_1002F2928);
  v52[2] = v44;
  *&v53 = &type metadata for Never;
  *(&v53 + 1) = v8;
  v54 = &protocol witness table for Never;
  v55 = swift_getWitnessTable();
  v9 = type metadata accessor for List();
  v42 = v9;
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v39 = &v37.i8[-v11];
  v12 = swift_getWitnessTable();
  v41 = v12;
  v40 = sub_1001A56A0();
  *&v53 = v9;
  *(&v53 + 1) = &type metadata for String;
  v54 = v12;
  v55 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = v14[8];
  v16 = (__chkstk_darwin)(OpaqueTypeMetadata2);
  v18 = &v37.i8[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v16);
  v38 = &v37.i8[-v20];
  v59 = *(v3 + 2);
  *&v53 = v59;
  v21 = v5;
  v19.i64[0] = v5;
  v37 = v19;

  v48 = *(v48.i64[0] + 24);
  *&v22 = vdupq_laneq_s64(v48, 1).u64[0];
  v23 = v7;
  *(&v22 + 1) = v7;
  v49 = vzip1q_s64(v37, v48);
  v50 = v22;
  swift_getWitnessTable();
  v24 = Sequence.sorted(by:)();
  v25 = *(v6 - 8);
  (*(v25 + 8))(&v59, v6);
  v52[0] = v24;
  v53 = *v3;
  v26 = *(v3 + 3);
  v27 = *(v3 + 4);
  v57 = *(v3 + 5);
  v58 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  *(v28 + 24) = v48;
  *(v28 + 40) = v23;
  v29 = v3[1];
  *(v28 + 48) = *v3;
  *(v28 + 64) = v29;
  *(v28 + 80) = v3[2];
  (*(v25 + 16))(&v51, &v59, v6);
  sub_1001ACE9C(&v53, &v51);
  sub_10020A178(&v58, &v51);

  v30 = type metadata accessor for Set();
  (*(*(v30 - 8) + 16))(&v51, &v57, v30);
  v31 = v39;
  sub_100208D90(v52, sub_10020A11C, v28, v6, v46, WitnessTable);
  v51 = v53;
  v32 = v42;
  View.navigationTitle<A>(_:)();
  (*(v43 + 8))(v31, v32);
  v33 = v14[2];
  v34 = v38;
  v33(v38, v18, OpaqueTypeMetadata2);
  v35 = v14[1];
  v35(v18, OpaqueTypeMetadata2);
  v33(v47, v34, OpaqueTypeMetadata2);
  return (v35)(v34, OpaqueTypeMetadata2);
}

uint64_t sub_100208A2C()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  v2 = v1;
  if (v0 == dispatch thunk of CustomStringConvertible.description.getter() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_100208AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v31 = *v3;
  v9 = *(v3 + 2);
  v29 = *(v3 + 3);
  v30 = v9;
  v10 = *(v3 + 4);
  v28 = *(v3 + 5);
  (*(v7 + 16))(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v13 = *(a2 + 40);
  v14.i64[0] = v6;
  v15 = v3[1];
  *(v12 + 48) = *v3;
  *(v12 + 64) = v15;
  *(v12 + 80) = v3[2];
  v21 = *(a2 + 24);
  v16 = *(a2 + 32);
  *(v12 + 16) = vzip1q_s64(v14, v21);
  *(v12 + 32) = v16;
  (*(v7 + 32))(v12 + v11, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v22 = v6;
  v23 = v21;
  v24 = v13;
  v25 = a1;
  v26 = v3;
  sub_1001ACE9C(&v31, v27);
  v17 = type metadata accessor for Array();
  (*(*(v17 - 8) + 16))(v27, &v30, v17);
  sub_10020A178(&v29, v27);

  v18 = type metadata accessor for Set();
  (*(*(v18 - 8) + 16))(v27, &v28, v18);
  sub_1001A551C(&qword_100377618, &qword_1002F2930);
  sub_1001AD0C8(&qword_100377620, &qword_100377618, &qword_1002F2930);
  return Button.init(action:label:)();
}

uint64_t sub_100208D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(*(*(a6 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  List<>.init(content:)();

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t sub_100208F14(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  if (sub_100209660(a1, a2))
  {
    v32 = a1;
    v19 = v2[3];
    v18 = v2[4];
    v20 = v2[5];
    v41 = v20;
    v42 = v19;
    v37 = v19;
    v38 = v18;
    v39 = v20;
    sub_10020A178(&v42, &v34);

    v21 = *(a2 + 32);
    v22 = type metadata accessor for Set();
    v23 = *(v22 - 8);
    (*(v23 + 16))(&v34, &v41, v22);
    type metadata accessor for Binding();
    Binding.wrappedValue.getter();
    Set.remove(_:)();
    (*(v14 + 8))(v17, v13);
    v34 = v19;
    v35 = v18;
    v36 = v20;
    v33 = v40;
    Binding.wrappedValue.setter();
    sub_100209E50(&v42);

    return (*(v23 + 8))(&v41, v22);
  }

  else
  {
    (*(v6 + 16))(v10, a1, v5);
    v32 = v2[3];
    v25 = v6;
    v26 = v2[4];
    v27 = v2[5];
    v41 = v27;
    v42 = v32;
    v37 = v32;
    v38 = v26;
    v39 = v27;
    sub_10020A178(&v42, &v34);

    v28 = *(a2 + 32);
    v29 = type metadata accessor for Set();
    v30 = *(v29 - 8);
    (*(v30 + 16))(&v34, &v41, v29);
    type metadata accessor for Binding();
    Binding.wrappedValue.getter();
    Set.insert(_:)();
    (*(v25 + 8))(v12, v5);
    v34 = v32;
    v35 = v26;
    v36 = v27;
    v33 = v40;
    Binding.wrappedValue.setter();
    sub_100209E50(&v42);

    return (*(v30 + 8))(&v41, v29);
  }
}

uint64_t sub_1002092D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = static VerticalAlignment.center.getter();
  *(a7 + 8) = 0;
  *(a7 + 16) = 1;
  v14 = sub_1001A551C(&qword_100377628, &qword_1002F2938);
  return sub_10020936C(a1, a2, a3, a4, a5, a6, a7 + *(v14 + 44));
}

uint64_t sub_10020936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a5;
  v43 = a6;
  v44 = a2;
  v11 = sub_1001A551C(&qword_100377630, &qword_1002F2940);
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  __chkstk_darwin(v11);
  v14 = &v40[-v13];
  v15 = sub_1001A551C(&qword_100377638, &qword_1002F2948);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v40[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v21 = &v40[-v20];
  v47 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v22;
  sub_1001A56A0();
  v23 = Text.init<A>(_:)();
  v25 = v24;
  v41 = v26;
  v45 = v27;
  v47 = a3;
  v48 = a4;
  v49 = v42;
  v50 = v43;
  v28 = type metadata accessor for SMultiselectionPickerList(0, &v47);
  v29 = sub_100209660(a1, v28);
  v30 = 1;
  if (v29)
  {
    v31 = type metadata accessor for SSFImage();
    v32 = v14 + *(v31 + 20);
    static SymbolRenderingMode.multicolor.getter();
    *v14 = 0x72616D6B63656863;
    v14[1] = 0xE90000000000006BLL;
    v33 = (v14 + *(v31 + 24));
    *v33 = 0;
    v33[1] = 0;
    v34 = static Color.green.getter();
    KeyPath = swift_getKeyPath();
    v36 = (v14 + *(v11 + 36));
    *v36 = KeyPath;
    v36[1] = v34;
    sub_10020A410(v14, v21);
    v30 = 0;
  }

  (*(v46 + 56))(v21, v30, 1, v11);
  sub_10020A398(v21, v19);
  *a7 = v23;
  *(a7 + 8) = v25;
  v37 = v41 & 1;
  *(a7 + 16) = v41 & 1;
  *(a7 + 24) = v45;
  *(a7 + 32) = 0;
  *(a7 + 40) = 1;
  v38 = sub_1001A551C(&qword_100377640, &qword_1002F2950);
  sub_10020A398(v19, a7 + *(v38 + 64));
  sub_1001A5174(v23, v25, v37);

  sub_1001AC99C(v21, &qword_100377638, &qword_1002F2948);
  sub_1001AC99C(v19, &qword_100377638, &qword_1002F2948);
  sub_1001ACFEC(v23, v25, v37);
}

uint64_t sub_100209660(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1002083DC(a2);
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  LOBYTE(v2) = Set.contains(_:)();

  return v2 & 1;
}

uint64_t sub_1002096C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v41 = a7;
  v42 = a2;
  v43 = a3;
  v44 = a9;
  v40 = a1;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(a1);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(*(v17 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v38 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v46 = a4;
  v47 = AssociatedTypeWitness;
  v48 = a5;
  v49 = a6;
  v21 = a5;
  v50 = AssociatedConformanceWitness;
  v22 = type metadata accessor for ForEach();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v37 - v28;
  v30 = *(v13 + 16);
  v37 = a4;
  v30(v16, v40, a4);
  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = v21;
  v33 = v41;
  v32 = v42;
  v31[4] = a6;
  v31[5] = v33;
  v31[6] = v38;
  v31[7] = v32;
  v31[8] = v43;

  ForEach<>.init(_:content:)();
  v45 = v33;
  swift_getWitnessTable();
  v34 = v23[2];
  v34(v29, v27, v22);
  v35 = v23[1];
  v35(v27, v22);
  v34(v44, v29, v22);
  return (v35)(v29, v22);
}

uint64_t sub_1002099D8@<X0>(uint64_t a1@<X4>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = v4[8];
  v6 = (__chkstk_darwin)();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  v12(v9);
  v13 = v4[2];
  v13(v11, v8, a1);
  v14 = v4[1];
  v14(v8, a1);
  v13(a2, v11, a1);
  return (v14)(v11, a1);
}

uint64_t sub_100209B44(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_100209C10()
{
  result = qword_100377558;
  if (!qword_100377558)
  {
    sub_1001A55C8(&qword_100377548, &qword_1002F2790);
    sub_100209CC8();
    sub_1001AD0C8(qword_100377580, &qword_100377550, &qword_1002F27C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377558);
  }

  return result;
}

unint64_t sub_100209CC8()
{
  result = qword_100377560;
  if (!qword_100377560)
  {
    sub_1001A55C8(&qword_100377568, &qword_1002F2800);
    sub_1001AD0C8(&qword_100377570, &qword_100377578, &qword_1002F2808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100377560);
  }

  return result;
}

uint64_t sub_100209D80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + a2 - 32);
  v4 = *(a1 + a2 - 24);
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a3 = result;
  a3[1] = v7;
  return result;
}

__n128 sub_100209DC4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100209EA4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100209EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100209F28(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100209F74(__int128 *a1)
{
  v2 = sub_1001A55C8(&qword_100377530, &qword_1002F2780);
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v4 = type metadata accessor for SMultiselectionPickerList(255, &v8);
  v5 = sub_1001AD0C8(&qword_100377538, &qword_100377530, &qword_1002F2780);
  WitnessTable = swift_getWitnessTable();
  *&v8 = v2;
  *(&v8 + 1) = v4;
  *&v9 = v5;
  *(&v9 + 1) = WitnessTable;
  type metadata accessor for NavigationLink();
  return swift_getWitnessTable();
}

uint64_t sub_10020A06C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10020A0A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_100208A2C() & 1;
}

uint64_t sub_10020A0C4()
{
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10020A11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 32);
  v8[0] = *(v2 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for SMultiselectionPickerList(0, v8);
  return sub_100208AE8(a1, v6, a2);
}

uint64_t sub_10020A1E8()
{
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10020A220@<X0>(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  v7 = v1[8];
  return sub_1002099D8(v1[3], a1);
}

uint64_t sub_10020A234()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 7);

  v7 = *(v0 + 8);

  v8 = *(v0 + 9);

  v9 = *(v0 + 10);

  v10 = *(v0 + 11);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10020A310()
{
  v1 = *(v0 + 32);
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 96) & ~*(*(*(v0 + 16) - 8) + 80);
  v5[0] = *(v0 + 16);
  v5[1] = v1;
  v3 = type metadata accessor for SMultiselectionPickerList(0, v5);
  return sub_100208F14(v0 + v2, v3);
}

uint64_t sub_10020A398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100377638, &qword_1002F2948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020A410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100377630, &qword_1002F2940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020A480(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_1001A55C8(&qword_100377608, &qword_1002F2928);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  sub_1001AD0C8(&qword_100377610, &qword_100377608, &qword_1002F2928);
  swift_getWitnessTable();
  type metadata accessor for List();
  swift_getWitnessTable();
  sub_1001A56A0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10020A64C()
{
  v0 = String._bridgeToObjectiveC()();
  MGGetBoolAnswer();

  v1.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

    v2 = 2;
  }

  else
  {

    v2 = 0;
  }

  v3 = String._bridgeToObjectiveC()();
  MGGetBoolAnswer();

  v4.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = 2;
  }

  else
  {

    v5 = 0;
  }

  v6 = 0x6E776F6E6B6E75;
  v7 = String._bridgeToObjectiveC()();
  v8 = MGGetStringAnswer();

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = MGGetStringAnswer();

  if (v13)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  type metadata accessor for HardwareManager();
  v16 = swift_allocObject();
  result = sub_10020AC60(v2 & 1, v5 & 1, v9, v11, v6, v15);
  qword_100382500 = v16;
  return result;
}

void sub_10020A870()
{
  v1 = [objc_opt_self() defaultCenter];
  v15 = v1;
  if (qword_100374FF8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    [v1 postNotificationName:static NSNotificationName.subsIdSelectionChange object:0 userInfo:0];
    v2 = *(v0 + 128);
    v3 = *(v2 + 16);
    if (!v3)
    {
      break;
    }

    if (*(v0 + 160))
    {
      LODWORD(v4) = 0;
LABEL_9:
      v5 = v4;
      if (v4 < v3)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

    v4 = *(v0 + 156);
    if (v3 > v4)
    {
      goto LABEL_9;
    }

    v5 = v3 - 1;
    if (v3 - 1 < v3)
    {
LABEL_10:
      sub_1001A773C(v2 + 32 * v5 + 32, v18);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 104);
        *(v0 + 96) = v16;
        *(v0 + 104) = v17;
      }

      v7 = *(v0 + 136);
      if (v5 >= *(v7 + 16))
      {
        __break(1u);
      }

      else
      {
        sub_1001A773C(v7 + 32 * v5 + 32, v18);
        if (swift_dynamicCast())
        {
          v8 = *(v0 + 120);
          *(v0 + 112) = v16;
          *(v0 + 120) = v17;
        }

        if (qword_100375020 == -1)
        {
          goto LABEL_16;
        }
      }

      swift_once();
LABEL_16:
      v9 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCellStateObj);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      static Published.subscript.getter();

      v10 = v18[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v18[0] = (v10 & 1) == 0;
      static Published.subscript.setter();
      v11 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      static Published.subscript.getter();

      v12 = v18[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v18[0] = (v12 & 1) == 0;
      static Published.subscript.setter();
      v13 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkDataStateObj);
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      static Published.subscript.getter();

      v14 = v18[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v18[0] = (v14 & 1) == 0;
      static Published.subscript.setter();

      return;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
    v1 = v15;
  }
}

uint64_t sub_10020AC60(char a1, char a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = 1684099177;
  *(v7 + 16) = 0;
  *(v7 + 22) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0xE000000000000000;
  v13 = type metadata accessor for FTMCarrierInfoObjectChanged();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  Published.init(initialValue:)();
  *(v7 + 153) = 0;
  *(v7 + 80) = v16;
  *(v7 + 88) = &_swiftEmptyArrayStorage;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0xE000000000000000;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0xE000000000000000;
  *(v7 + 128) = &_swiftEmptyArrayStorage;
  *(v7 + 136) = &_swiftEmptyArrayStorage;
  *(v7 + 144) = 0;
  *(v7 + 152) = 2;
  *(v7 + 156) = 0;
  *(v7 + 160) = 1;
  *(v7 + 168) = xmmword_1002F2990;
  v17 = 0xE400000000000000;
  *(v7 + 184) = 0xE400000000000000;
  *(v7 + 192) = 5202011;
  *(v7 + 24) = a1;
  *(v7 + 25) = a2;
  *(v7 + 26) = (a1 | a2) & 1;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  sub_1001A56A0();

  *(v7 + 27) = StringProtocol.contains<A>(_:)() & 1;
  *(v7 + 28) = StringProtocol.contains<A>(_:)() & 1;
  aBlock = a3;
  v33 = a4;
  v38 = 829714025;
  v39 = 0xE400000000000000;
  *(v7 + 153) = StringProtocol.contains<A>(_:)() & 1;
  if ((a5 != 1684099177 || a6 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v12 = 0x656E6F685069;
    v17 = 0xE600000000000000;
  }

  *(v7 + 32) = v12;
  *(v7 + 40) = v17;
  sub_10020BEF4();
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002EED30;
  *(v18 + 56) = &type metadata for String;
  v19 = sub_1001A76E8();
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v19;
  *(v18 + 64) = v19;
  *(v18 + 72) = a5;
  *(v18 + 80) = a6;
  v20 = *(v7 + 27);
  *(v18 + 136) = &type metadata for Bool;
  *(v18 + 144) = &protocol witness table for Bool;
  *(v18 + 112) = v20;
  os_log(_:dso:log:type:_:)();

  v21 = 843928646;
  if (*(v7 + 28))
  {
    v21 = 827151430;
  }

  v22 = *(v7 + 184);
  *(v7 + 176) = v21;
  *(v7 + 184) = 0xE400000000000000;

  if (*(v7 + 28))
  {
    v23 = 8323091;
  }

  else
  {
    v23 = 5202011;
  }

  *(v7 + 192) = v23;
  if (*(v7 + 24) == 1)
  {
    sub_10020B25C();
  }

  if (*(v7 + 153) == 1)
  {
    v24 = *(v7 + 184);
    *(v7 + 176) = 860705862;
    *(v7 + 184) = 0xE400000000000000;

    *(v7 + 192) = 8323091;
  }

  v25 = [objc_opt_self() defaultCenter];
  if (qword_100374FF0 != -1)
  {
    swift_once();
  }

  v26 = static NSNotificationName.carrierUpdate;
  v36 = sub_10020BFF4;
  v37 = v7;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_10025BE6C;
  v35 = &unk_10031F160;
  v27 = _Block_copy(&aBlock);

  v28 = [v25 addObserverForName:v26 object:0 queue:0 usingBlock:v27];
  _Block_release(v27);
  swift_unknownObjectRelease();

  *(v7 + 29) = sub_10020BD78() & 1;
  return v7;
}

uint64_t sub_10020B134()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100374FF0 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:static NSNotificationName.carrierUpdate object:0];

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  v9 = *(v0 + 128);

  v10 = *(v0 + 136);

  v11 = *(v0 + 184);

  return v0;
}

uint64_t sub_10020B228()
{
  sub_10020B134();

  return swift_deallocClassInstance();
}

void sub_10020B25C()
{
  if (sub_10020B57C())
  {
    return;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v10 == 1)
      {
        if (qword_100374FA8 != -1)
        {
          swift_once();
        }

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
        *(v0 + 24) = 0;
        *(v0 + 26) = 0;
      }

      else
      {
        v4 = String._bridgeToObjectiveC()();
        MGGetBoolAnswer();

        v5.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          LOBYTE(v13[0]) = 2;
          static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

          v6 = 2;
        }

        else
        {

          v6 = 0;
        }

        *(v0 + 24) = v6 & 1;
        v7 = String._bridgeToObjectiveC()();
        MGGetBoolAnswer();

        v8.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          LOBYTE(v13[0]) = 2;
          static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

          v9 = 2;
        }

        else
        {

          v9 = 0;
        }

        *(v0 + 25) = v9 & 1;
        *(v0 + 26) = (*(v0 + 24) | v9) & 1;
      }

      return;
    }
  }

  else
  {
    sub_1001AC99C(v13, &qword_100375D68, &unk_1002F2370);
  }

  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_10020B57C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 integerForKey:v2];

  if (v3 == 2)
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    *(v0 + 24) = 0;
    *(v0 + 26) = 0;
    return 1;
  }

  else if (v3 == 1)
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    *(v0 + 24) = 256;
    result = 1;
    *(v0 + 26) = 1;
  }

  else if (v3)
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    return 0;
  }

  else
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    result = 1;
    *(v0 + 24) = 1;
    *(v0 + 26) = 1;
  }

  return result;
}

void sub_10020B7D4()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (v2)
  {
    v3 = v2;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v4 = sub_1001F6774(v17), (v5 & 1) != 0))
    {
      sub_1001A773C(*(v3 + 56) + 32 * v4, v18);
      sub_1002015DC(v17);
      sub_1001A551C(&qword_100377040, &qword_1002F21E8);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        v6 = *(v0 + 88);
        *(v0 + 88) = _swiftEmptyArrayStorage;

        v7 = *(v0 + 80);
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v8 = v18[0];
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v18[0]) = (v8 & 1) == 0;
        static Published.subscript.setter();
        swift_beginAccess();
        sub_1001E3210(0x7372656972726163);
        swift_endAccess();
        v9 = *(v1 + 80);
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v10 = v18[0];
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v18[0]) = (v10 & 1) == 0;
        static Published.subscript.setter();
        sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1002EED50;
        *(v11 + 56) = &type metadata for String;
        *(v11 + 32) = 0xD000000000000014;
        *(v11 + 40) = 0x80000001002BCA40;
        *(v11 + 88) = sub_1001A551C(&qword_100377A10, &unk_1002F2BA0);
        *(v11 + 64) = v3;
        print(_:separator:terminator:)();

        v12 = [objc_opt_self() defaultCenter];
        if (qword_100374FE8 != -1)
        {
          swift_once();
        }

        v13 = static NSNotificationName.NewCTMetric;
        sub_1001A551C(&qword_100377050, &qword_1002F21F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1002EED40;
        strcpy(v18, "metricObject");
        HIBYTE(v18[6]) = 0;
        v18[7] = -5120;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for MetricNotificationObject;
        v15 = swift_allocObject();
        *(inited + 72) = v15;
        *(v15 + 16) = 5521746;
        *(v15 + 24) = 0xE300000000000000;
        *(v15 + 32) = 0xD000000000000011;
        *(v15 + 40) = 0x80000001002B9FD0;
        *(v15 + 48) = 0;
        sub_1001FD020(inited);
        swift_setDeallocating();
        sub_1001AC99C(inited + 32, &qword_100377058, &qword_1002F21F8);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v12 postNotificationName:v13 object:0 userInfo:isa];
      }

      else
      {
      }
    }

    else
    {

      sub_1002015DC(v17);
    }
  }
}

uint64_t sub_10020BD78()
{
  v1 = objc_getClass("CellularLogging");
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_1001AC99C(v7, &qword_100375D68, &unk_1002F2370);
  if (qword_100374FA0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002EED40;
  v3 = sub_1001A76E8();
  v4 = 1163219540;
  if (!v1)
  {
    v4 = 0x45534C4146;
  }

  v5 = 0xE400000000000000;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = v3;
  if (!v1)
  {
    v5 = 0xE500000000000000;
  }

  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  os_log(_:dso:log:type:_:)();

  if (v1 && (*(v0 + 28) & 1) == 0)
  {
    return *(v0 + 26);
  }

  else
  {
    return 0;
  }
}

void sub_10020BEF4()
{
  [*(v0 + 16) invalidate];
  v1 = objc_opt_self();
  v5[4] = sub_10020C268;
  v6 = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10025BE04;
  v5[3] = &unk_10031F188;
  v2 = _Block_copy(v5);

  v3 = [v1 scheduledTimerWithTimeInterval:0 repeats:v2 block:2.0];
  _Block_release(v2);
  v4 = *(v0 + 16);
  *(v0 + 16) = v3;
}

uint64_t sub_10020BFF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10020C010(uint64_t a1, uint64_t a2)
{
  v3 = String._bridgeToObjectiveC()();
  MGGetBoolAnswer();

  v4.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = 2;
  }

  else
  {

    v5 = 0;
  }

  *(a2 + 155) = v5 & 1;
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v6 = [objc_opt_self() defaultCenter];
  v7 = v6;
  if (qword_100375010 != -1)
  {
    swift_once();
    v6 = v7;
  }

  [v6 postNotificationName:static NSNotificationName.isAirPlaneModeEnabled object:0 userInfo:{0, v7}];
}

uint64_t sub_10020C2C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 52, 7);
}

uint64_t sub_10020C300(uint64_t a1)
{
  v2 = type metadata accessor for FTMBandInfoDataModel(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - v11;
  __chkstk_darwin(v10);
  v34 = v13;
  v35 = &v33 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = *(v13 + 72);
    v18 = a1 + v16;
    v19 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_1001BB760(v18, v12);
      v20 = v12[9];
      if (v20 <= 1)
      {
        if (!v12[9])
        {

LABEL_12:
          sub_1001BB4B8(v12, v6);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001F5438(0, v19[2] + 1, 1);
            v19 = v36;
          }

          v24 = v19[2];
          v23 = v19[3];
          if (v24 >= v23 >> 1)
          {
            sub_1001F5438(v23 > 1, v24 + 1, 1);
            v19 = v36;
          }

          v19[2] = v24 + 1;
          sub_1001BB4B8(v6, v19 + v16 + v24 * v17);
          goto LABEL_4;
        }
      }

      else if (v20 != 2 && v20 != 3)
      {
        goto LABEL_3;
      }

      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v21)
      {
        goto LABEL_12;
      }

LABEL_3:
      sub_1001BB7C4(v12);
LABEL_4:
      v18 += v17;
      if (!--v15)
      {
        goto LABEL_18;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_18:
  if (!v19[2])
  {

    goto LABEL_36;
  }

  sub_1001BB760(v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v9);

  v25 = v9;
  v26 = v35;
  sub_1001BB4B8(v25, v35);
  v27 = *(v26 + 25);
  if (v27 <= 3)
  {
    goto LABEL_28;
  }

  if (*(v26 + 25) > 5u)
  {
    if (v27 != 6)
    {
      sub_1001BB7C4(v26);
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (v27 == 4)
  {
LABEL_28:
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_29;
    }

    if (v27 == 3)
    {

      sub_1001BB7C4(v26);
LABEL_35:
      v30 = 0;
      v29 = 256;
      return v29 | v30;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_1001BB7C4(v26);
    if (v31)
    {
      goto LABEL_35;
    }

LABEL_36:
    v29 = 0;
    v30 = 0;
    return v29 | v30;
  }

LABEL_29:
  sub_1001BB7C4(v26);
  v29 = 0;
  v30 = 1;
  return v29 | v30;
}

uint64_t sub_10020C78C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020C7D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = _HashTable.startBucket.getter();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v14 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 + 48);
    *a2 = sub_10021A69C(&v7[v12], v9, *(a1 + 36), 0, a1);
    sub_10021C3E0(&v7[v12], a2 + *(v4 + 48), type metadata accessor for STransferMetrics);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_10020C96C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10020C9B0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_10020CACC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v0);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v30 = &v29 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v29 - v11;
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  Date.init()();
  v31 = sub_1001D530C();
  v32 = v1[1];
  v32(v14, v0);
  if (qword_100374F80 != -1)
  {
    swift_once();
  }

  v15 = qword_100382470;
  v16 = String._bridgeToObjectiveC()();
  [v15 setDateFormat:v16];

  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 dateFromString:v17];

  if (!v18)
  {

    return 0;
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = v1[4];
  v19(v12, v9, v0);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v15 dateFromString:v20];

  if (!v21)
  {
    v32(v12, v0);
    return 0;
  }

  v22 = v29;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = v30;
  v19(v30, v22, v0);
  Date.timeIntervalSince(_:)();
  v25 = v24;
  v26 = v24;
  v27 = v32;
  v32(v23, v0);
  result = v27(v12, v0);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v25 > -9.22337204e18)
  {
    if (v25 < 9.22337204e18)
    {
      return v25;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_10020CE48()
{
  result = [objc_allocWithZone(type metadata accessor for FTMCellMonitorSharedClass()) init];
  qword_100382508 = result;
  return result;
}

uint64_t sub_10020CE78(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkDataStateObj);
  v3 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
  swift_beginAccess();
  v4 = *(a1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10020CF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002181D0();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_10020D218(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandDataObj);
  v3 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels;
  swift_beginAccess();
  v4 = *(a1 + v3);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1002EED40;
  v6 = *(a1 + v3);
  *(v5 + 56) = sub_1001A551C(&qword_1003770E8, &unk_1002F22C0);
  *(v5 + 64) = sub_1001AD0C8(&qword_100377BC0, &qword_1003770E8, &unk_1002F22C0);
  *(v5 + 32) = v6;

  os_log(_:dso:log:type:_:)();
}

uint64_t sub_10020D3C0(int a1)
{
  LODWORD(v211) = a1;
  v217 = type metadata accessor for DispatchWorkItemFlags();
  v204 = *(v217 - 8);
  v2 = *(v204 + 64);
  __chkstk_darwin(v217);
  v216 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for DispatchQoS();
  v203 = *(v215 - 8);
  v4 = *(v203 + 64);
  __chkstk_darwin(v215);
  v214 = &v199 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for FTMNetworkInfoDataModel(0);
  v226 = *(v213 - 8);
  v6 = *(v226 + 64);
  v7 = __chkstk_darwin(v213);
  v212 = &v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v225 = &v199 - v10;
  v11 = __chkstk_darwin(v9);
  v209 = &v199 - v12;
  v13 = __chkstk_darwin(v11);
  v208 = &v199 - v14;
  v15 = __chkstk_darwin(v13);
  v224 = &v199 - v16;
  v17 = __chkstk_darwin(v15);
  v218 = &v199 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v199 - v20;
  v22 = __chkstk_darwin(v19);
  v220 = &v199 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v199 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v199 - v28;
  v30 = __chkstk_darwin(v27);
  v222 = &v199 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v199 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v199 - v36;
  v38 = __chkstk_darwin(v35);
  *&v221 = &v199 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v199 - v41;
  v43 = __chkstk_darwin(v40);
  v207 = (&v199 - v44);
  v45 = __chkstk_darwin(v43);
  v223 = &v199 - v46;
  __chkstk_darwin(v45);
  v210 = &v199 - v47;
  v48 = sub_10021AF50();
  j = v48;
  v50 = *(v48 + 16);
  if (!v50)
  {
LABEL_8:
  }

  v200 = v37;
  v201 = v29;
  v205 = v42;
  v206 = v34;
  v199 = v21;
  i = v26;
  v219 = v1;
  v51 = 0;
  while (1)
  {
    if (v51 >= *(j + 16))
    {
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      v160 = v48;

      sub_10021C2E0(v160);
LABEL_142:

      v108 = v205;
      v56 = v219;
      sub_10020F644(v205, j);
      v109 = v108;
      goto LABEL_148;
    }

    if (*(j + v51 + 32) && *(j + v51 + 32) != 1)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_12;
    }

    if (v50 == ++v51)
    {
      goto LABEL_8;
    }
  }

LABEL_12:

  v54 = v218;
  v53 = v219;
  if (v211 == 2 || (v211 & 1) == 0)
  {
    if (qword_100375020 != -1)
    {
      goto LABEL_202;
    }

    goto LABEL_17;
  }

  v55 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
  swift_beginAccess();
  v56 = *(v53 + v55);
  v21 = v56[2];
  v211 = v55;
  v57 = 0;
  if (!v21)
  {
    v91 = 0;
    goto LABEL_182;
  }

  j = (*(v226 + 80) + 32) & ~*(v226 + 80);
  v58 = v56 + j;
  while (2)
  {
    if (v57 < v56[2])
    {
      v62 = *(v226 + 72);
      sub_10021C448(v58 + v62 * v57, v54, type metadata accessor for FTMNetworkInfoDataModel);
      v68 = *(v54 + 9);
      if (v68 > 2)
      {
        if (v68 == 3)
        {
          goto LABEL_31;
        }

        sub_10021C2E0(v54);
      }

      else
      {
        if (*(v54 + 9) && v68 != 2)
        {

          sub_10021C2E0(v54);
LABEL_155:
          v91 = v57 + 1;
          v116 = v56[2];
          if (v116 - 1 == v57)
          {
            goto LABEL_182;
          }

          v21 = j + v62 * v91;
          v78 = v211;
          while (2)
          {
            if (v91 >= v116)
            {
              goto LABEL_201;
            }

            v93 = v224;
            sub_10021C448(v56 + v21, v224, type metadata accessor for FTMNetworkInfoDataModel);
            v117 = *(v93 + 9);
            if (v117 <= 1)
            {
              if (*(v93 + 9))
              {

                sub_10021C2E0(v224);
                goto LABEL_159;
              }

              v93 = 0xE100000000000000;
            }

            else
            {
              if (v117 != 2)
              {
                if (v117 == 3)
                {
                  v93 = 0xE200000000000000;
                  goto LABEL_168;
                }

                sub_10021C2E0(v224);
                if (v91 != v57)
                {
LABEL_172:
                  if ((v57 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
LABEL_312:
                    __break(1u);
LABEL_313:
                    __break(1u);
LABEL_314:
                    __break(1u);
LABEL_315:
                    __break(1u);
LABEL_316:
                    v93 = sub_100224AD4(0, *(v93 + 16) + 1, 1, v93);
                    *(v56 + v224) = v93;
LABEL_100:
                    j = *(v93 + 16);
                    v95 = *(v93 + 24);
                    if (j >= v95 >> 1)
                    {
                      v93 = sub_100224AD4(v95 > 1, j + 1, 1, v93);
                    }

                    *(v93 + 16) = j + 1;
                    sub_10021C3E0(v91, v93 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * j, type metadata accessor for FTMNetworkInfoDataModel);
                    *(v56 + v224) = v93;
                    swift_endAccess();
                    sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                    goto LABEL_103;
                  }

                  v119 = v56[2];
                  if (v57 >= v119)
                  {
                    goto LABEL_312;
                  }

                  v93 = v57 * v62;
                  sub_10021C448(v56 + j + v57 * v62, v208, type metadata accessor for FTMNetworkInfoDataModel);
                  if (v91 >= v119)
                  {
                    goto LABEL_313;
                  }

                  sub_10021C448(v56 + v21, v209, type metadata accessor for FTMNetworkInfoDataModel);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v219 + v78) = v56;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v56 = sub_1001FA67C(v56);
                    *(v219 + v78) = v56;
                  }

                  if (v57 >= v56[2])
                  {
                    goto LABEL_314;
                  }

                  sub_10021C33C(v209, v56 + j + v93);
                  v93 = v219;
                  *(v219 + v78) = v56;
                  if (v91 >= v56[2])
                  {
                    goto LABEL_315;
                  }

                  sub_10021C33C(v208, v56 + v21);
                  *(v93 + v78) = v56;
                }

LABEL_158:
                ++v57;
                goto LABEL_159;
              }

              v93 = 0xE200000000000000;
            }

LABEL_168:
            v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_10021C2E0(v224);
            if ((v118 & 1) == 0)
            {
              if (v91 != v57)
              {
                goto LABEL_172;
              }

              goto LABEL_158;
            }

LABEL_159:
            ++v91;
            v116 = v56[2];
            v21 += v62;
            if (v91 == v116)
            {
              if (v91 >= v57)
              {
LABEL_182:
                v121 = v219;
                sub_1001FCA54(v57, v91);
                swift_endAccess();
                sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                v122 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
                result = swift_beginAccess();
                v123 = *(v121 + v122);
                v210 = *(v123 + 16);
                if (!v210)
                {
                  return result;
                }

                v209 = sub_1002181D0();
                v208 = type metadata accessor for Date();
                v124 = *(v208 - 8);
                v125 = *(v124 + 56);
                v206 = v124 + 56;
                v207 = v125;
                v204 += 8;
                v205 = v229;
                v203 += 8;

                v126 = 32;
                v220 = 1;
                for (i = v123; ; v123 = i)
                {
                  v218 = v126;
                  v230 = *(v123 + v126);
                  v127 = *(v123 + v126 + 16);
                  v128 = *(v123 + v126 + 32);
                  v129 = *(v123 + v126 + 64);
                  v233 = *(v123 + v126 + 48);
                  v234 = v129;
                  v231 = v127;
                  v232 = v128;
                  v130 = *(v123 + v126 + 80);
                  v131 = *(v123 + v126 + 96);
                  v132 = *(v123 + v126 + 128);
                  v237 = *(v123 + v126 + 112);
                  v238 = v132;
                  v235 = v130;
                  v236 = v131;
                  v133 = *(v123 + v126 + 144);
                  v134 = *(v123 + v126 + 160);
                  v135 = *(v123 + v126 + 176);
                  *(v241 + 9) = *(v123 + v126 + 185);
                  v240 = v134;
                  v241[0] = v135;
                  v239 = v133;
                  v136 = v231;
                  v137 = BYTE8(v231);
                  v138 = BYTE10(v133);
                  v221 = v232;
                  v139 = v233;
                  v140 = BYTE8(v233);
                  v141 = v135;
                  v142 = BYTE8(v135);
                  v143 = v134;
                  LODWORD(v224) = BYTE8(v134);
                  v223 = v234;
                  LODWORD(v222) = BYTE8(v234);
                  v144 = v225;
                  (v207)(v225 + *(v213 + 84), 1, 1, v208);
                  *v144 = v136;
                  *(v144 + 8) = v137;
                  *(v144 + 9) = 1;
                  v145 = v220;
                  *(v144 + 16) = v220;
                  *(v144 + 24) = 0;
                  *(v144 + 25) = v138;
                  *(v144 + 32) = v221;
                  *(v144 + 48) = v139;
                  *(v144 + 56) = v140;
                  *(v144 + 72) = 0;
                  *(v144 + 80) = 0;
                  *(v144 + 64) = 0;
                  *(v144 + 88) = 1;
                  *(v144 + 96) = v141;
                  *(v144 + 104) = v142;
                  *(v144 + 112) = v143;
                  *(v144 + 120) = v224;
                  *(v144 + 128) = v223;
                  *(v144 + 136) = v222;
                  *(v144 + 144) = 0;
                  *(v144 + 152) = 1;
                  *(v144 + 160) = 0;
                  *(v144 + 168) = 1;
                  *(v144 + 176) = 0;
                  *(v144 + 184) = 1;
                  *(v144 + 192) = 0;
                  *(v144 + 200) = 1;
                  *(v144 + 208) = 0;
                  *(v144 + 216) = 1;
                  *(v144 + 224) = 0;
                  *(v144 + 232) = 1;
                  v146 = v212;
                  sub_10021C448(v144, v212, type metadata accessor for FTMNetworkInfoDataModel);
                  v147 = v219;
                  v148 = v211;
                  swift_beginAccess();
                  v149 = *&v147[v148];
                  sub_100201470(&v230, &v227);
                  v150 = swift_isUniquelyReferenced_nonNull_native();
                  *&v147[v148] = v149;
                  if ((v150 & 1) == 0)
                  {
                    v149 = sub_100224AD4(0, v149[2] + 1, 1, v149);
                    *&v147[v148] = v149;
                  }

                  v152 = v149[2];
                  v151 = v149[3];
                  if (v152 >= v151 >> 1)
                  {
                    v149 = sub_100224AD4(v151 > 1, v152 + 1, 1, v149);
                  }

                  v149[2] = v152 + 1;
                  sub_10021C3E0(v146, v149 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v152, type metadata accessor for FTMNetworkInfoDataModel);
                  *&v147[v148] = v149;
                  swift_endAccess();
                  v153 = static OS_dispatch_queue.main.getter();
                  v154 = swift_allocObject();
                  *(v154 + 16) = v147;
                  v229[2] = sub_10021C51C;
                  v229[3] = v154;
                  v227 = _NSConcreteStackBlock;
                  v228 = 1107296256;
                  v229[0] = sub_10020C96C;
                  v229[1] = &unk_10031F390;
                  v155 = _Block_copy(&v227);
                  v156 = v147;

                  v157 = v214;
                  static DispatchQoS.unspecified.getter();
                  v227 = _swiftEmptyArrayStorage;
                  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
                  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
                  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
                  v159 = v216;
                  v158 = v217;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  OS_dispatch_queue.async(group:qos:flags:execute:)();
                  _Block_release(v155);

                  (*v204)(v159, v158);
                  (*v203)(v157, v215);
                  sub_10021C2E0(v225);
                  if (v210 == v145)
                  {
                    break;
                  }

                  v220 = v145 + 1;
                  v126 = (v218 + 208);
                }
              }

              __break(1u);
LABEL_318:
              v93 = sub_100224AD4(0, *(v93 + 16) + 1, 1, v93);
              *(v56 + v78) = v93;
LABEL_248:
              v175 = *(v93 + 16);
              v174 = *(v93 + 24);
              if (v175 >= v174 >> 1)
              {
                v93 = sub_100224AD4(v174 > 1, v175 + 1, 1, v93);
              }

              *(v93 + 16) = v175 + 1;
              sub_10021C3E0(v201, v93 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v175, type metadata accessor for FTMNetworkInfoDataModel);
              *(v56 + v78) = v93;
              swift_endAccess();
              sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
LABEL_251:
              v115 = sub_10021C2E0(v206);
              goto LABEL_252;
            }

            continue;
          }
        }

LABEL_31:
        v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10021C2E0(v54);
        if (v67)
        {
          goto LABEL_155;
        }
      }

      if (v21 == ++v57)
      {
        v57 = v56[2];
        v91 = v57;
        goto LABEL_182;
      }

      continue;
    }

    break;
  }

  while (2)
  {
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    swift_once();
LABEL_17:
    v59 = &unk_100382000;
    v60 = qword_100382508;
    p_cb = &OBJC_PROTOCOL___CoreTelephonyClientDataDelegate.cb;
    j = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v62 = *(v60 + j);
    v244 = _swiftEmptyArrayStorage;
    if (v62 >> 62)
    {
      v63 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v225 = v63;
    if (v63)
    {
      v21 = 0;
      v57 = v62 & 0xC000000000000001;
      v56 = (v62 & 0xFFFFFFFFFFFFFF8);
      v54 = &type metadata for String;
      v64 = v225;
      do
      {
        if (v57)
        {
          v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          j = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v21 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_192;
          }

          v58 = *(v62 + 8 * v21 + 32);

          j = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        v65 = *(v58 + 40);
        v227 = *(v58 + 32);
        v228 = v65;
        v246 = 18229;
        v247 = 0xE200000000000000;
        sub_1001A56A0();
        if (StringProtocol.contains<A>(_:)())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v66 = *(v244 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v64 = v225;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v48 = specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v21;
      }

      while (j != v64);
      v57 = v244;
      v59 = &unk_100382000;
      p_cb = (&OBJC_PROTOCOL___CoreTelephonyClientDataDelegate + 64);
    }

    else
    {
      v57 = _swiftEmptyArrayStorage;
    }

    v69 = v59[161];
    j = *(p_cb + 323);
    swift_beginAccess();
    v70 = *(v69 + j);
    v243 = _swiftEmptyArrayStorage;
    if (v70 >> 62)
    {
      v71 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = _swiftEmptyArrayStorage;
    v225 = v57;
    if (!v71)
    {
      goto LABEL_58;
    }

    v72 = 0;
    v224 = v70 & 0xC000000000000001;
    j = v70 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (v224)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v21 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          break;
        }

        goto LABEL_52;
      }

      if (v72 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_193;
      }

      v73 = *(v70 + 8 * v72 + 32);

      v21 = v72 + 1;
      if (!__OFADD__(v72, 1))
      {
LABEL_52:
        v74 = *(v73 + 40);
        v246 = *(v73 + 32);
        v247 = v74;
        v244 = 4543564;
        v245 = 0xE300000000000000;
        sub_1001A56A0();
        if (StringProtocol.contains<A>(_:)())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v75 = *(v243 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v57 = v225;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v48 = specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v72;
        if (v21 == v71)
        {
          goto LABEL_57;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_57:
    v21 = v243;
LABEL_58:

    v76 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    v56 = v219;
    if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
    {
      v48 = _CocoaArrayWrapper.endIndex.getter();
      v62 = v48;
      if (!v48)
      {
        goto LABEL_206;
      }

LABEL_61:
      v77 = 0;
      v246 = _swiftEmptyArrayStorage;
      v78 = v57 & 0xC000000000000001;
      while (v78)
      {
        v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        j = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_71;
        }

LABEL_67:
        if (*(v79 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId))
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v80 = *(v246 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v57 = v225;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v48 = specialized ContiguousArray._endMutation()();
        }

        ++v77;
        if (j == v62)
        {
          goto LABEL_72;
        }
      }

      if (v77 >= *(v57 + 16))
      {
        goto LABEL_194;
      }

      v79 = *(v57 + 8 * v77 + 32);

      j = v77 + 1;
      if (!__OFADD__(v77, 1))
      {
        goto LABEL_67;
      }

LABEL_71:
      __break(1u);
LABEL_72:
      if (v246 < 0 || (v246 & 0x4000000000000000) != 0)
      {
        v196 = _CocoaArrayWrapper.endIndex.getter();

        if (!v196)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v81 = *(v246 + 16);

        if (!v81)
        {
          goto LABEL_104;
        }
      }

      sub_1002100F0(v57, 0, 1, 1, v210);
      v82 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
      swift_beginAccess();
      v224 = v82;
      v83 = *(v56 + v82);
      v84 = *(v83 + 16);

      if (!v84)
      {
LABEL_99:

        v91 = v207;
        sub_10021C448(v210, v207, type metadata accessor for FTMNetworkInfoDataModel);
        v92 = v224;
        v56 = v219;
        swift_beginAccess();
        v93 = *(v56 + v92);
        v94 = swift_isUniquelyReferenced_nonNull_native();
        *(v56 + v92) = v93;
        if ((v94 & 1) == 0)
        {
          goto LABEL_316;
        }

        goto LABEL_100;
      }

      v85 = v84;
      v86 = 0;
LABEL_79:
      if (v86 >= *(v83 + 16))
      {
        __break(1u);
LABEL_199:
        __break(1u);
        continue;
      }

      j = v223;
      sub_10021C448(v83 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v86, v223, type metadata accessor for FTMNetworkInfoDataModel);
      v87 = *(j + 9);
      if (v87 <= 1)
      {
        if (*(j + 9))
        {
          goto LABEL_86;
        }
      }

      else if (v87 == 2 || v87 == 3)
      {
LABEL_86:
        v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v88 = v223;
        if (v89)
        {
          goto LABEL_87;
        }

        goto LABEL_77;
      }

      v88 = v223;
LABEL_87:
      if ((*(v88 + 8) & 1) != 0 || *v88)
      {
LABEL_77:
        sub_10021C2E0(v88);
        goto LABEL_78;
      }

      if (*(v88 + 25) > 3u)
      {
        if (*(v88 + 25) > 5u && *(v88 + 25) != 6)
        {
          goto LABEL_77;
        }

LABEL_97:
        v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10021C2E0(v223);
        if (v90)
        {
          goto LABEL_98;
        }

LABEL_78:
        ++v86;
        v57 = v225;
        if (v85 == v86)
        {
          goto LABEL_99;
        }

        goto LABEL_79;
      }

      if (*(v88 + 25) > 1u || !*(v88 + 25))
      {
        goto LABEL_97;
      }

      sub_10021C2E0(v223);
LABEL_98:

      v56 = v219;
      sub_10020F644(v210, v86);
      v57 = v225;
LABEL_103:
      v48 = sub_10021C2E0(v210);
LABEL_104:
      v96 = 0;
      v244 = _swiftEmptyArrayStorage;
      while (2)
      {
        if (v78)
        {
          v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          j = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            break;
          }

          goto LABEL_110;
        }

        if (v96 >= *(v57 + 16))
        {
          goto LABEL_195;
        }

        v97 = *(v57 + 8 * v96 + 32);

        j = v96 + 1;
        if (!__OFADD__(v96, 1))
        {
LABEL_110:
          if (*(v97 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == 1)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v98 = *(v244 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v57 = v225;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v48 = specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v96;
          if (j == v62)
          {
            goto LABEL_115;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_115:
      if (v244 < 0 || (v244 & 0x4000000000000000) != 0)
      {
        v99 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v99 = *(v244 + 16);
      }

      v100 = v205;

      if (!v99)
      {

LABEL_150:
        v76 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_207;
        }

        goto LABEL_301;
      }

      sub_1002100F0(v57, 1, 1, 1, v100);

      v101 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
      swift_beginAccess();
      v102 = *(v56 + v101);
      v103 = *(v102 + 16);

      if (v103)
      {
        for (j = 0; v103 != j; ++j)
        {
          if (j >= *(v102 + 16))
          {
            goto LABEL_199;
          }

          v104 = v221;
          sub_10021C448(v102 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * j, v221, type metadata accessor for FTMNetworkInfoDataModel);
          v105 = *(v104 + 9);
          if (v105 <= 1)
          {
            if (!*(v104 + 9))
            {
              goto LABEL_129;
            }
          }

          else if (v105 != 2 && v105 != 3)
          {
LABEL_129:

            v48 = v221;
            goto LABEL_131;
          }

          v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v48 = v221;
          if ((v106 & 1) == 0)
          {
            goto LABEL_121;
          }

LABEL_131:
          if ((*(v48 + 8) & 1) != 0 || *v48 != 1)
          {
LABEL_121:
            sub_10021C2E0(v48);
            continue;
          }

          if (*(v48 + 25) <= 3u)
          {
            if (*(v48 + 25) <= 1u && *(v48 + 25))
            {
              goto LABEL_196;
            }
          }

          else if (*(v48 + 25) > 5u && *(v48 + 25) != 6)
          {
            goto LABEL_121;
          }

          v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_10021C2E0(v221);
          if (v107)
          {
            goto LABEL_142;
          }
        }
      }

      v110 = v205;
      sub_10021C448(v205, v200, type metadata accessor for FTMNetworkInfoDataModel);
      v56 = v219;
      swift_beginAccess();
      v111 = *(v56 + v101);
      v112 = swift_isUniquelyReferenced_nonNull_native();
      *(v56 + v101) = v111;
      if ((v112 & 1) == 0)
      {
        v111 = sub_100224AD4(0, v111[2] + 1, 1, v111);
        *(v56 + v101) = v111;
      }

      v114 = v111[2];
      v113 = v111[3];
      if (v114 >= v113 >> 1)
      {
        v111 = sub_100224AD4(v113 > 1, v114 + 1, 1, v111);
      }

      v111[2] = v114 + 1;
      sub_10021C3E0(v200, v111 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v114, type metadata accessor for FTMNetworkInfoDataModel);
      *(v56 + v101) = v111;
      swift_endAccess();
      sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
      v109 = v110;
LABEL_148:
      v115 = sub_10021C2E0(v109);
      goto LABEL_150;
    }

    break;
  }

  v62 = *(v57 + 16);
  if (v62)
  {
    goto LABEL_61;
  }

LABEL_206:

  if ((v21 & 0x8000000000000000) == 0)
  {
LABEL_207:
    if ((v21 & 0x4000000000000000) == 0)
    {
      j = *(v21 + 16);
      if (!j)
      {
      }

      goto LABEL_209;
    }
  }

LABEL_301:
  v115 = _CocoaArrayWrapper.endIndex.getter();
  j = v115;
  if (!v115)
  {
  }

LABEL_209:
  v161 = 0;
  v243 = _swiftEmptyArrayStorage;
  v57 = v21 & 0xC000000000000001;
  while (2)
  {
    if (v57)
    {
      v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v164 = v161 + 1;
      if (__OFADD__(v161, 1))
      {
        break;
      }

      goto LABEL_215;
    }

    if (v161 >= *(v21 + 16))
    {
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      v195 = v115;

      sub_10021C2E0(v195);
LABEL_289:

      v187 = i;
      sub_10020F644(i, j);
      return sub_10021C2E0(v187);
    }

    v163 = *(v21 + 8 * v161 + 32);

    v164 = v161 + 1;
    if (!__OFADD__(v161, 1))
    {
LABEL_215:
      if (*(v163 + *v76))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v162 = *(v243 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v115 = specialized ContiguousArray._endMutation()();
        v76 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      }

      ++v161;
      if (v164 == j)
      {
        goto LABEL_220;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_220:
  if ((v243 & 0x8000000000000000) != 0 || (v243 & 0x4000000000000000) != 0)
  {
    v197 = _CocoaArrayWrapper.endIndex.getter();

    if (!v197)
    {
      goto LABEL_252;
    }

LABEL_223:
    sub_1002100F0(v21, 0, 1, 2, v206);
    v78 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
    swift_beginAccess();
    v76 = *(v56 + v78);
    v56 = v76[2];

    if (!v56)
    {
LABEL_247:

      sub_10021C448(v206, v201, type metadata accessor for FTMNetworkInfoDataModel);
      v56 = v219;
      swift_beginAccess();
      v93 = *(v56 + v78);
      v173 = swift_isUniquelyReferenced_nonNull_native();
      *(v56 + v78) = v93;
      if ((v173 & 1) == 0)
      {
        goto LABEL_318;
      }

      goto LABEL_248;
    }

    v166 = 0;
    while (1)
    {
      if (v166 >= v76[2])
      {
        __break(1u);
LABEL_300:
        __break(1u);
        goto LABEL_301;
      }

      v167 = v222;
      sub_10021C448(v76 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v166, v222, type metadata accessor for FTMNetworkInfoDataModel);
      v168 = *(v167 + 9);
      if (v168 <= 1)
      {
        if (!*(v167 + 9))
        {
          goto LABEL_233;
        }
      }

      else if (v168 != 2 && v168 != 3)
      {
LABEL_233:

        v169 = v222;
        goto LABEL_235;
      }

      v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v169 = v222;
      if ((v170 & 1) == 0)
      {
        goto LABEL_225;
      }

LABEL_235:
      if ((*(v169 + 8) & 1) != 0 || *v169)
      {
LABEL_225:
        sub_10021C2E0(v169);
        goto LABEL_226;
      }

      v171 = *(v169 + 25);
      if (v171 <= 3)
      {
        if (*(v169 + 25) > 1u && v171 != 3)
        {

          sub_10021C2E0(v222);
LABEL_246:

          v56 = v219;
          sub_10020F644(v206, v166);
          goto LABEL_251;
        }
      }

      else if (*(v169 + 25) > 5u && v171 != 6)
      {
        goto LABEL_225;
      }

      v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10021C2E0(v222);
      if (v172)
      {
        goto LABEL_246;
      }

LABEL_226:
      if (v56 == ++v166)
      {
        goto LABEL_247;
      }
    }
  }

  v165 = *(v243 + 16);

  if (v165)
  {
    goto LABEL_223;
  }

LABEL_252:
  v176 = 0;
  v242 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v57)
    {
      v177 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v178 = v176 + 1;
      if (__OFADD__(v176, 1))
      {
        break;
      }

      goto LABEL_258;
    }

    if (v176 >= *(v21 + 16))
    {
      goto LABEL_296;
    }

    v177 = *(v21 + 8 * v176 + 32);

    v178 = v176 + 1;
    if (!__OFADD__(v176, 1))
    {
LABEL_258:
      if (*(v177 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == 1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v179 = *(v242 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v115 = specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v176;
      if (v178 == j)
      {
        goto LABEL_263;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_263:
  if ((v242 & 0x8000000000000000) != 0 || (v242 & 0x4000000000000000) != 0)
  {
    v198 = _CocoaArrayWrapper.endIndex.getter();

    if (!v198)
    {
    }

LABEL_266:
    sub_1002100F0(v21, 1, 1, 2, i);

    v21 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
    swift_beginAccess();
    v76 = *(v56 + v21);
    v181 = v76[2];

    if (!v181)
    {
LABEL_290:

      v188 = i;
      v189 = v199;
      sub_10021C448(i, v199, type metadata accessor for FTMNetworkInfoDataModel);
      v190 = v219;
      swift_beginAccess();
      v191 = *(v190 + v21);
      v192 = swift_isUniquelyReferenced_nonNull_native();
      *(v190 + v21) = v191;
      if ((v192 & 1) == 0)
      {
        v191 = sub_100224AD4(0, v191[2] + 1, 1, v191);
        *(v190 + v21) = v191;
      }

      v194 = v191[2];
      v193 = v191[3];
      if (v194 >= v193 >> 1)
      {
        v191 = sub_100224AD4(v193 > 1, v194 + 1, 1, v191);
      }

      v191[2] = v194 + 1;
      sub_10021C3E0(v189, v191 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v194, type metadata accessor for FTMNetworkInfoDataModel);
      *(v190 + v21) = v191;
      swift_endAccess();
      sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
      return sub_10021C2E0(v188);
    }

    j = 0;
    v56 = 0xE500000000000000;
    while (1)
    {
      if (j >= v76[2])
      {
        goto LABEL_300;
      }

      v182 = v220;
      sub_10021C448(v76 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * j, v220, type metadata accessor for FTMNetworkInfoDataModel);
      v183 = *(v182 + 9);
      if (v183 <= 1)
      {
        if (!*(v182 + 9))
        {
          goto LABEL_276;
        }
      }

      else if (v183 != 2 && v183 != 3)
      {
LABEL_276:

        v115 = v220;
        goto LABEL_278;
      }

      v184 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v115 = v220;
      if ((v184 & 1) == 0)
      {
        goto LABEL_268;
      }

LABEL_278:
      if ((*(v115 + 8) & 1) != 0 || *v115 != 1)
      {
LABEL_268:
        sub_10021C2E0(v115);
        goto LABEL_269;
      }

      v185 = *(v115 + 25);
      if (v185 <= 3)
      {
        if (*(v115 + 25) > 1u && v185 != 3)
        {
          goto LABEL_297;
        }
      }

      else if (*(v115 + 25) > 5u && v185 != 6)
      {
        goto LABEL_268;
      }

      v186 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10021C2E0(v220);
      if (v186)
      {
        goto LABEL_289;
      }

LABEL_269:
      if (v181 == ++j)
      {
        goto LABEL_290;
      }
    }
  }

  v180 = *(v242 + 16);

  if (v180)
  {
    goto LABEL_266;
  }
}

uint64_t sub_10020F644(uint64_t a1, unint64_t a2)
{
  v5 = v2;
  v8 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
  result = swift_beginAccess();
  v10 = *(v2 + v8);
  if (v10[2] > a2)
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + v8) = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = sub_1001FA67C(v10);
      *(v5 + v8) = v10;
      if ((a2 & 0x8000000000000000) == 0)
      {
LABEL_4:
        if (v10[2] > a2)
        {
          v14 = *(type metadata accessor for FTMNetworkInfoDataModel(0) - 8);
          v3 = (*(v14 + 80) + 32) & ~*(v14 + 80);
          v4 = *(v14 + 72) * a2;
          v15 = v10 + v3 + v4;
          v16 = *(v15 + 5);
          *(v15 + 4) = v12;
          *(v15 + 5) = v11;

          if (*(v15 + 5))
          {
            v17 = *(v15 + 4);
            if (v15[56])
            {
              v53 = *(v15 + 4);
              v57 = *(v15 + 5);
              sub_1001A56A0();
              v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v12 = v19;
            }

            else
            {
              v20 = *(v15 + 6);
              v54 = *(v15 + 4);
              sub_1001A56A0();
              v21._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              String.append(_:)(v21);

              v22._countAndFlagsBits = 10272;
              v22._object = 0xE200000000000000;
              String.append(_:)(v22);
              Double.write<A>(to:)();
              v23._countAndFlagsBits = 0x297A484D20;
              v23._object = 0xE500000000000000;
              String.append(_:)(v23);
              v18 = 0;
              v12 = 0xE000000000000000;
            }
          }

          else
          {
            v18 = 0;
            v12 = 0xE000000000000000;
          }

          v24 = *(v15 + 9);

          *(v15 + 8) = v18;
          *(v15 + 9) = v12;
          *(v5 + v8) = v10;
          swift_endAccess();
          sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
          v11 = *(a1 + 48);
          LOBYTE(v12) = *(a1 + 56);
          swift_beginAccess();
          v10 = *(v5 + v8);
          v25 = swift_isUniquelyReferenced_nonNull_native();
          *(v5 + v8) = v10;
          if (v25)
          {
LABEL_11:
            if (v10[2] <= a2)
            {
              __break(1u);
            }

            else
            {
              v26 = v10 + v3 + v4;
              *(v26 + 6) = v11;
              v26[56] = v12;
              if (*(v26 + 5))
              {
                v27 = *(v26 + 4);
                if (v12)
                {
                  v55 = *(v26 + 4);
                  v58 = *(v26 + 5);
                  sub_1001A56A0();
                  v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  v12 = v29;
                }

                else
                {
                  v56 = *(v26 + 4);
                  sub_1001A56A0();
                  v30._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  String.append(_:)(v30);

                  v31._countAndFlagsBits = 10272;
                  v31._object = 0xE200000000000000;
                  String.append(_:)(v31);
                  Double.write<A>(to:)();
                  v32._countAndFlagsBits = 0x297A484D20;
                  v32._object = 0xE500000000000000;
                  String.append(_:)(v32);
                  v28 = 0;
                  v12 = 0xE000000000000000;
                }
              }

              else
              {
                v28 = 0;
                v12 = 0xE000000000000000;
              }

              v33 = *(v26 + 9);

              *(v26 + 8) = v28;
              *(v26 + 9) = v12;
              *(v5 + v8) = v10;
              swift_endAccess();
              sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
              v10 = *(a1 + 80);
              LOBYTE(v12) = *(a1 + 88);
              swift_beginAccess();
              v11 = *(v5 + v8);
              v34 = swift_isUniquelyReferenced_nonNull_native();
              *(v5 + v8) = v11;
              if (v34)
              {
LABEL_18:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v35 = v11 + v3 + v4;
                  *(v35 + 10) = v10;
                  v35[88] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 112);
                  LOBYTE(v12) = *(a1 + 120);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v36 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v36)
                  {
                    goto LABEL_20;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_20:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v37 = v11 + v3 + v4;
                  *(v37 + 14) = v10;
                  v37[120] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 96);
                  LOBYTE(v12) = *(a1 + 104);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v38 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v38)
                  {
                    goto LABEL_22;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_22:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v39 = v11 + v3 + v4;
                  *(v39 + 12) = v10;
                  v39[104] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 128);
                  LOBYTE(v12) = *(a1 + 136);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v40 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v40)
                  {
                    goto LABEL_24;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_24:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v41 = v11 + v3 + v4;
                  *(v41 + 16) = v10;
                  v41[136] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 144);
                  LOBYTE(v12) = *(a1 + 152);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v42 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v42)
                  {
                    goto LABEL_26;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_26:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v43 = v11 + v3 + v4;
                  *(v43 + 18) = v10;
                  v43[152] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 160);
                  LOBYTE(v12) = *(a1 + 168);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v44 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v44)
                  {
                    goto LABEL_28;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_28:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v45 = v11 + v3 + v4;
                  *(v45 + 20) = v10;
                  v45[168] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 176);
                  LOBYTE(v12) = *(a1 + 184);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v46 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v46)
                  {
                    goto LABEL_30;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_30:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v47 = v11 + v3 + v4;
                  *(v47 + 22) = v10;
                  v47[184] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 192);
                  LOBYTE(v12) = *(a1 + 200);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v48 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v48)
                  {
                    goto LABEL_32;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_32:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v49 = v11 + v3 + v4;
                  *(v49 + 24) = v10;
                  v49[200] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 208);
                  LOBYTE(v12) = *(a1 + 216);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  v50 = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (v50)
                  {
                    goto LABEL_34;
                  }
                }

                v11 = sub_1001FA67C(v11);
LABEL_34:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v51 = v11 + v3 + v4;
                  *(v51 + 26) = v10;
                  v51[216] = v12;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                  v10 = *(a1 + 224);
                  LOBYTE(a1) = *(a1 + 232);
                  swift_beginAccess();
                  v11 = *(v5 + v8);
                  result = swift_isUniquelyReferenced_nonNull_native();
                  *(v5 + v8) = v11;
                  if (result)
                  {
                    goto LABEL_36;
                  }
                }

                result = sub_1001FA67C(v11);
                v11 = result;
LABEL_36:
                if (v11[2] <= a2)
                {
                  __break(1u);
                }

                else
                {
                  v52 = v11 + v3 + v4;
                  *(v52 + 28) = v10;
                  v52[232] = a1;
                  *(v5 + v8) = v11;
                  swift_endAccess();
                  return sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
                }

                return result;
              }
            }

            v11 = sub_1001FA67C(v11);
            goto LABEL_18;
          }

LABEL_42:
          v10 = sub_1001FA67C(v10);
          *(v5 + v8) = v10;
          goto LABEL_11;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_1002100F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X8>)
{
  v11 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v185 = &v176 - v13;
  v14 = *(type metadata accessor for FTMNetworkInfoDataModel(0) + 84);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v183 = v15;
  v184 = v14;
  v181 = v16 + 56;
  v182 = v17;
  (v17)(a5 + v14, 1, 1);
  v189 = a2;
  *a5 = a2;
  *(a5 + 8) = 0;
  *(a5 + 16) = a3;
  v18 = a1;
  *(a5 + 24) = 0;
  *(a5 + 25) = a4;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 32) = 0;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  v177 = (a5 + 64);
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 1;
  *(a5 + 96) = 0;
  *(a5 + 104) = 1;
  *(a5 + 112) = 0;
  *(a5 + 120) = 1;
  *(a5 + 128) = 0;
  *(a5 + 136) = 1;
  *(a5 + 144) = 0;
  *(a5 + 152) = 1;
  *(a5 + 160) = 0;
  *(a5 + 168) = 1;
  *(a5 + 176) = 0;
  *(a5 + 184) = 1;
  *(a5 + 192) = 0;
  *(a5 + 200) = 1;
  *(a5 + 208) = 0;
  *(a5 + 216) = 1;
  *(a5 + 232) = 1;
  v194 = _swiftEmptyArrayStorage;
  *(a5 + 224) = 0;
  if (a1 >> 62)
  {
LABEL_34:
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v186 = a5;
  v20 = _swiftEmptyArrayStorage;
  v187 = v18;
  v188 = v19;
  if (v19)
  {
    a5 = 0;
    v21 = v18 & 0xC000000000000001;
    v5 = v18 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v21)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v23 = a5 + 1;
        if (__OFADD__(a5, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v20 = _swiftEmptyArrayStorage;
          break;
        }
      }

      else
      {
        if (a5 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v22 = *(v18 + 8 * a5 + 32);

        v23 = a5 + 1;
        if (__OFADD__(a5, 1))
        {
          goto LABEL_19;
        }
      }

      v24 = *(v22 + 48) == 1684955458 && *(v22 + 56) == 0xE400000000000000;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v22 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = *(v194 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v19 = v188;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v18 = v187;
      }

      else
      {
      }

      ++a5;
      if (v23 == v19)
      {
        goto LABEL_20;
      }
    }
  }

  v194 = sub_10021A608(v26);
  v27 = 0;
  sub_100218274(&v194);

  v28 = v194;
  if ((v194 & 0x8000000000000000) == 0 && (v194 & 0x4000000000000000) == 0)
  {
    if (*(v194 + 16))
    {
      goto LABEL_24;
    }

LABEL_36:

    v38 = 0;
    v178 = 0;
    v5 = 0;
    goto LABEL_37;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_36;
  }

LABEL_24:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v28 + 16))
    {
      __break(1u);
      goto LABEL_283;
    }

    v29 = *(v28 + 32);
  }

  if (a4 == 2)
  {

    goto LABEL_31;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_31:
    v194 = 66;
    v195 = 0xE100000000000000;
    v32 = *(v29 + 112);
    v33 = *(v29 + 120);

    v34._countAndFlagsBits = v32;
    v34._object = v33;
    String.append(_:)(v34);
    v19 = v188;

    v31 = v194;
    v5 = v195;
    goto LABEL_32;
  }

  v31 = *(v29 + 112);
  v5 = *(v29 + 120);

LABEL_32:
  v35 = v186;
  v186[4] = v31;
  v35[5] = v5;
  v178 = v31;
  v194 = v31;
  v195 = v5;
  v192 = 0x20646E6142;
  v193 = 0xE500000000000000;
  v190 = 0;
  v191 = 0xE000000000000000;
  sub_1001A56A0();
  v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v38 = v37;

  v35[8] = v36;
  v35[9] = v38;
LABEL_37:
  v39 = v187;
  v194 = _swiftEmptyArrayStorage;
  if (!v19)
  {
    goto LABEL_55;
  }

  v179 = v5;
  v180 = 0;
  v27 = v38;
  v40 = 0;
  v5 = 0x74646977646E6142;
  v41 = v187 & 0xC000000000000001;
  v20 = (v187 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (!v41)
    {
      if (v40 < v20[2])
      {
        v19 = *(v39 + 8 * v40 + 32);

        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        goto LABEL_44;
      }

      __break(1u);
LABEL_68:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_69;
      }

LABEL_59:
      if ((v39 & 0xC000000000000001) == 0)
      {
        if (!*(v39 + 16))
        {
          __break(1u);
          goto LABEL_285;
        }

        v46 = *(v39 + 32);

LABEL_62:

        v47 = *(v46 + 112);
        v48 = *(v46 + 120);
        v194 = 0;

        LOBYTE(v47) = sub_10022464C(v47, v48);

        if ((v47 & 1) == 0)
        {
          goto LABEL_69;
        }

        v49 = v186;
        v186[6] = v194;
        *(v49 + 56) = 0;
        if (v5)
        {
          v194 = v178;
          v195 = v5;
          v192 = 0x20646E6142;
          v193 = 0xE500000000000000;
          v190 = 0;
          v191 = 0xE000000000000000;
          sub_1001A56A0();
          v50._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v194 = 0;
          v195 = 0xE000000000000000;
          String.append(_:)(v50);

          v51._countAndFlagsBits = 10272;
          v51._object = 0xE200000000000000;
          String.append(_:)(v51);
          Double.write<A>(to:)();
          v52._countAndFlagsBits = 0x297A484D20;
          v52._object = 0xE500000000000000;
          String.append(_:)(v52);

          v53 = v195;
          v49[8] = v194;
          v49[9] = v53;
        }

        else
        {

          *v177 = xmmword_1002F2090;
        }

        goto LABEL_70;
      }

LABEL_283:
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_62;
    }

    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

LABEL_44:
    v43 = *(v19 + 48) == 0x74646977646E6142 && *(v19 + 56) == 0xE900000000000068;
    if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v19 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v44 = *(v194 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v39 = v187;
    }

    else
    {
    }

    ++v40;
    v19 = v188;
    if (v42 == v188)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_54:
  v20 = _swiftEmptyArrayStorage;
  v5 = v179;
  v27 = v180;
LABEL_55:

  v194 = sub_10021A608(v45);
  sub_100218274(&v194);
  if (v27)
  {
    goto LABEL_368;
  }

  v39 = v194;
  if (v194 < 0 || (v194 & 0x4000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (*(v194 + 16))
  {
    goto LABEL_59;
  }

LABEL_69:

LABEL_70:
  v54 = v187;
  v194 = v20;
  if (!v19)
  {
    goto LABEL_88;
  }

  v55 = 0;
  v56 = v187 & 0xC000000000000001;
  v57 = v187 & 0xFFFFFFFFFFFFFF8;
  v20 = 0xE700000000000000;
  while (2)
  {
    if (!v56)
    {
      if (v55 < *(v57 + 16))
      {
        v19 = *(v54 + 8 * v55 + 32);

        v58 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_86;
        }

LABEL_77:
        v59 = *(v19 + 48) == 0x6449206C6C6543 && *(v19 + 56) == 0xE700000000000000;
        if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v19 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v60 = *(v194 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v54 = v187;
        }

        else
        {
        }

        ++v55;
        v19 = v188;
        if (v58 == v188)
        {
          goto LABEL_87;
        }

        continue;
      }

      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_118;
      }

LABEL_92:
      if ((v55 & 0xC000000000000001) == 0)
      {
        if (*(v55 + 16))
        {
          v62 = *(v55 + 32);

          goto LABEL_95;
        }

        __break(1u);
LABEL_287:
        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_126;
      }

LABEL_285:
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_95:

      v63 = *(v62 + 112);
      v64 = *(v62 + 120);

      v65 = sub_1001E248C(v63, v64);
      LOBYTE(v64) = v66;

      v67 = v187;
      if ((v64 & 1) == 0)
      {
        v68 = v186;
        v186[10] = v65;
        *(v68 + 88) = 0;
      }

      v194 = v20;
      if (!v19)
      {
        goto LABEL_119;
      }

      goto LABEL_98;
    }

    break;
  }

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v58 = v55 + 1;
  if (!__OFADD__(v55, 1))
  {
    goto LABEL_77;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  v20 = _swiftEmptyArrayStorage;
LABEL_88:

  v194 = sub_10021A608(v61);
  sub_100218274(&v194);
  if (v27)
  {
    goto LABEL_368;
  }

  v55 = v194;
  if (v194 < 0 || (v194 & 0x4000000000000000) != 0)
  {
    goto LABEL_117;
  }

  if (*(v194 + 16))
  {
    goto LABEL_92;
  }

LABEL_118:

  v67 = v187;
  v194 = v20;
  if (!v19)
  {
    goto LABEL_119;
  }

LABEL_98:
  v55 = 0;
  v69 = v67 & 0xC000000000000001;
  v70 = v67 & 0xFFFFFFFFFFFFFF8;
  v20 = 0xE700000000000000;
  while (2)
  {
    if (v69)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v71 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      goto LABEL_104;
    }

    if (v55 >= *(v70 + 16))
    {
      goto LABEL_116;
    }

    v19 = *(v67 + 8 * v55 + 32);

    v71 = v55 + 1;
    if (!__OFADD__(v55, 1))
    {
LABEL_104:
      v72 = *(v19 + 48) == 0x4E43465241524ELL && *(v19 + 56) == 0xE700000000000000;
      if (v72 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v19 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v73 = *(v194 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v67 = v187;
      }

      else
      {
      }

      ++v55;
      v19 = v188;
      if (v71 == v188)
      {
        goto LABEL_114;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_114:
  v20 = _swiftEmptyArrayStorage;
LABEL_119:

  v194 = sub_10021A608(v74);
  sub_100218274(&v194);
  if (v27)
  {
    goto LABEL_368;
  }

  v75 = v194;
  if (v194 < 0 || (v194 & 0x4000000000000000) != 0)
  {
LABEL_147:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_148;
    }

LABEL_123:
    if ((v75 & 0xC000000000000001) != 0)
    {
      goto LABEL_287;
    }

    if (!*(v75 + 16))
    {
      __break(1u);
      goto LABEL_289;
    }

    v76 = *(v75 + 32);

LABEL_126:

    v77 = *(v76 + 112);
    v78 = *(v76 + 120);

    v79 = sub_1001E248C(v77, v78);
    LOBYTE(v78) = v80;

    v81 = v187;
    if ((v78 & 1) == 0)
    {
      v82 = v186;
      v186[14] = v79;
      *(v82 + 120) = 0;
    }

    v194 = v20;
    if (!v19)
    {
      goto LABEL_149;
    }

    goto LABEL_129;
  }

  if (*(v194 + 16))
  {
    goto LABEL_123;
  }

LABEL_148:

  v81 = v187;
  v194 = v20;
  if (!v19)
  {
    goto LABEL_149;
  }

LABEL_129:
  v75 = 0;
  v83 = v81 & 0xC000000000000001;
  v84 = v81 & 0xFFFFFFFFFFFFFF8;
  v20 = 0xE600000000000000;
  while (2)
  {
    if (!v83)
    {
      if (v75 >= *(v84 + 16))
      {
        __break(1u);
        goto LABEL_147;
      }

      v19 = *(v81 + 8 * v75 + 32);

      v85 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      goto LABEL_135;
    }

    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v85 = v75 + 1;
    if (!__OFADD__(v75, 1))
    {
LABEL_135:
      v86 = *(v19 + 48) == 0x4E4346524145 && *(v19 + 56) == 0xE600000000000000;
      if (v86 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v19 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v87 = *(v194 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v81 = v187;
      }

      else
      {
      }

      ++v75;
      v19 = v188;
      if (v85 == v188)
      {
        goto LABEL_145;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_145:
  v20 = _swiftEmptyArrayStorage;
LABEL_149:

  v194 = sub_10021A608(v88);
  sub_100218274(&v194);
  if (v27)
  {
    goto LABEL_368;
  }

  v89 = v194;
  if (v194 < 0 || (v194 & 0x4000000000000000) != 0)
  {
    goto LABEL_177;
  }

  if (!*(v194 + 16))
  {
    goto LABEL_178;
  }

  while (2)
  {
    if ((v89 & 0xC000000000000001) == 0)
    {
      if (*(v89 + 16))
      {
        v90 = *(v89 + 32);

        goto LABEL_156;
      }

      __break(1u);
LABEL_291:
      v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_186:

      v106 = *(v105 + 112);
      v107 = *(v105 + 120);

      v108 = sub_1001E248C(v106, v107);
      LOBYTE(v107) = v109;

      v110 = v187;
      if ((v107 & 1) == 0)
      {
        v111 = v186;
        v186[16] = v108;
        *(v111 + 136) = 0;
      }

      v194 = v20;
      if (!v19)
      {
        goto LABEL_209;
      }

LABEL_189:
      v104 = 0;
      v112 = v110 & 0xC000000000000001;
      v113 = v110 & 0xFFFFFFFFFFFFFF8;
      v20 = 0xE400000000000000;
      while (1)
      {
        if (v112)
        {
          v114 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v115 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
LABEL_204:
            __break(1u);
LABEL_205:
            v20 = _swiftEmptyArrayStorage;
            goto LABEL_209;
          }
        }

        else
        {
          if (v104 >= *(v113 + 16))
          {
            __break(1u);
            goto LABEL_207;
          }

          v114 = *(v110 + 8 * v104 + 32);

          v115 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            goto LABEL_204;
          }
        }

        v116 = *(v114 + 48) == 1347572562 && *(v114 + 56) == 0xE400000000000000;
        if (v116 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v114 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v117 = *(v194 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v19 = v188;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v110 = v187;
        }

        else
        {
        }

        ++v104;
        if (v115 == v19)
        {
          goto LABEL_205;
        }
      }
    }

LABEL_289:
    v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_156:

    v91 = *(v90 + 112);
    v92 = *(v90 + 120);

    v93 = sub_1001E248C(v91, v92);
    LOBYTE(v92) = v94;

    v95 = v187;
    if ((v92 & 1) == 0)
    {
      v96 = v186;
      v186[12] = v93;
      *(v96 + 104) = 0;
    }

    v194 = v20;
    if (!v19)
    {
      goto LABEL_179;
    }

LABEL_159:
    v89 = 0;
    v97 = v95 & 0xC000000000000001;
    v98 = v95 & 0xFFFFFFFFFFFFFF8;
    v20 = 0xE300000000000000;
LABEL_162:
    if (!v97)
    {
      if (v89 >= *(v98 + 16))
      {
        __break(1u);
LABEL_177:
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          continue;
        }

LABEL_178:

        v95 = v187;
        v194 = v20;
        if (!v19)
        {
          goto LABEL_179;
        }

        goto LABEL_159;
      }

      v99 = *(v95 + 8 * v89 + 32);

      v100 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_174;
      }

      goto LABEL_165;
    }

    break;
  }

  v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v100 = v89 + 1;
  if (!__OFADD__(v89, 1))
  {
LABEL_165:
    v101 = *(v99 + 48) == 4801360 && *(v99 + 56) == 0xE300000000000000;
    if (v101 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v99 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v102 = *(v194 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v19 = v188;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v95 = v187;
    }

    else
    {
    }

    ++v89;
    if (v100 == v19)
    {
      goto LABEL_175;
    }

    goto LABEL_162;
  }

LABEL_174:
  __break(1u);
LABEL_175:
  v20 = _swiftEmptyArrayStorage;
LABEL_179:

  v194 = sub_10021A608(v103);
  sub_100218274(&v194);
  if (v27)
  {
    goto LABEL_368;
  }

  v104 = v194;
  if (v194 < 0 || (v194 & 0x4000000000000000) != 0)
  {
LABEL_207:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_208;
    }

LABEL_183:
    if ((v104 & 0xC000000000000001) != 0)
    {
      goto LABEL_291;
    }

    if (*(v104 + 16))
    {
      v105 = *(v104 + 32);

      goto LABEL_186;
    }

    __break(1u);
    goto LABEL_293;
  }

  if (*(v194 + 16))
  {
    goto LABEL_183;
  }

LABEL_208:

  v110 = v187;
  v194 = v20;
  if (v19)
  {
    goto LABEL_189;
  }

LABEL_209:

  v194 = sub_10021A608(v118);
  sub_100218274(&v194);
  if (v27)
  {
    goto LABEL_368;
  }

  v119 = v194;
  if (v194 < 0 || (v194 & 0x4000000000000000) != 0)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_219;
    }

LABEL_213:
    if ((v119 & 0xC000000000000001) == 0)
    {
      if (!*(v119 + 16))
      {
        __break(1u);
        goto LABEL_295;
      }

      v120 = *(v119 + 32);

LABEL_216:

      v121 = *(v120 + 112);
      v122 = *(v120 + 120);
      v194 = 0;

      LOBYTE(v121) = sub_10022464C(v121, v122);

      if (v121)
      {
        v123 = v186;
        v186[18] = v194;
        *(v123 + 152) = 0;
      }

      goto LABEL_220;
    }

LABEL_293:
    v120 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_216;
  }

  if (*(v194 + 16))
  {
    goto LABEL_213;
  }

LABEL_219:

LABEL_220:
  v124 = v187;
  v194 = v20;
  if (v19)
  {
    v125 = 0;
    v126 = v187 & 0xC000000000000001;
    v127 = v187 & 0xFFFFFFFFFFFFFF8;
    v20 = 0xE400000000000000;
    while (1)
    {
      if (v126)
      {
        v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v129 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
LABEL_236:
          __break(1u);
LABEL_237:
          v20 = _swiftEmptyArrayStorage;
          break;
        }
      }

      else
      {
        if (v125 >= *(v127 + 16))
        {
          __break(1u);
          goto LABEL_248;
        }

        v128 = *(v124 + 8 * v125 + 32);

        v129 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          goto LABEL_236;
        }
      }

      v130 = *(v128 + 48) == 1364349778 && *(v128 + 56) == 0xE400000000000000;
      if (v130 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v128 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v131 = *(v194 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v19 = v188;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v124 = v187;
      }

      else
      {
      }

      ++v125;
      if (v129 == v19)
      {
        goto LABEL_237;
      }
    }
  }

  v194 = sub_10021A608(v132);
  sub_100218274(&v194);
  if (v27)
  {
    goto LABEL_368;
  }

  v125 = v194;
  if (v194 < 0 || (v194 & 0x4000000000000000) != 0)
  {
LABEL_248:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_249;
    }

LABEL_242:
    if ((v125 & 0xC000000000000001) == 0)
    {
      if (!*(v125 + 16))
      {
        __break(1u);
        goto LABEL_297;
      }

      v133 = *(v125 + 32);

      goto LABEL_245;
    }

LABEL_295:
    v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_245:

    v134 = *(v133 + 112);
    v135 = *(v133 + 120);
    v194 = 0;

    LOBYTE(v134) = sub_10022464C(v134, v135);

    if (v134)
    {
      v136 = v186;
      v186[20] = v194;
      *(v136 + 168) = 0;
    }

    goto LABEL_250;
  }

  if (*(v194 + 16))
  {
    goto LABEL_242;
  }

LABEL_249:

LABEL_250:
  v137 = v187;
  if (qword_100375018 != -1)
  {
    goto LABEL_280;
  }

LABEL_251:
  if (*(qword_100382500 + 27) != 1)
  {
    goto LABEL_330;
  }

  v194 = v20;
  if (v19)
  {
    v138 = 0;
    v139 = v137 & 0xC000000000000001;
    v140 = v137 & 0xFFFFFFFFFFFFFF8;
    v20 = 0xE500000000000000;
    while (1)
    {
      if (v139)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v141 = v138 + 1;
        if (__OFADD__(v138, 1))
        {
LABEL_268:
          __break(1u);
LABEL_269:
          v20 = _swiftEmptyArrayStorage;
          break;
        }
      }

      else
      {
        if (v138 >= *(v140 + 16))
        {
          __break(1u);
LABEL_280:
          swift_once();
          goto LABEL_251;
        }

        v19 = *(v137 + 8 * v138 + 32);

        v141 = v138 + 1;
        if (__OFADD__(v138, 1))
        {
          goto LABEL_268;
        }
      }

      v142 = *(v19 + 48) == 0x30524E4953 && *(v19 + 56) == 0xE500000000000000;
      if (v142 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v19 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v143 = *(v194 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v137 = v187;
      }

      else
      {
      }

      ++v138;
      v19 = v188;
      if (v141 == v188)
      {
        goto LABEL_269;
      }
    }
  }

  v194 = sub_10021A608(v144);
  sub_100218274(&v194);
  if (!v27)
  {

    v125 = v194;
    if ((v194 & 0x8000000000000000) == 0 && (v194 & 0x4000000000000000) == 0)
    {
      if (*(v194 + 16))
      {
        goto LABEL_274;
      }

LABEL_298:

      goto LABEL_299;
    }

LABEL_297:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_298;
    }

LABEL_274:
    if ((v125 & 0xC000000000000001) != 0)
    {
      goto LABEL_364;
    }

    if (!*(v125 + 16))
    {
      __break(1u);
      goto LABEL_366;
    }

    v145 = *(v125 + 32);

    while (2)
    {

      v146 = *(v145 + 112);
      v147 = *(v145 + 120);
      v194 = 0;

      LOBYTE(v146) = sub_10022464C(v146, v147);

      if (v146)
      {
        v148 = v186;
        v186[26] = v194;
        *(v148 + 216) = 0;
      }

LABEL_299:
      v149 = v187;
      v194 = v20;
      if (v19)
      {
        v150 = 0;
        v151 = v187 & 0xC000000000000001;
        v152 = v187 & 0xFFFFFFFFFFFFFF8;
        v20 = 0xE500000000000000;
        while (1)
        {
          if (v151)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v153 = v150 + 1;
            if (__OFADD__(v150, 1))
            {
LABEL_315:
              __break(1u);
LABEL_316:
              v20 = _swiftEmptyArrayStorage;
              break;
            }
          }

          else
          {
            if (v150 >= *(v152 + 16))
            {
              __break(1u);
              goto LABEL_327;
            }

            v19 = *(v149 + 8 * v150 + 32);

            v153 = v150 + 1;
            if (__OFADD__(v150, 1))
            {
              goto LABEL_315;
            }
          }

          v154 = *(v19 + 48) == 0x31524E4953 && *(v19 + 56) == 0xE500000000000000;
          if (v154 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v19 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v155 = *(v194 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v149 = v187;
          }

          else
          {
          }

          ++v150;
          v19 = v188;
          if (v153 == v188)
          {
            goto LABEL_316;
          }
        }
      }

      v194 = sub_10021A608(v156);
      sub_100218274(&v194);
      if (v27)
      {
        break;
      }

      v150 = v194;
      if (v194 < 0 || (v194 & 0x4000000000000000) != 0)
      {
LABEL_327:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_328;
        }

LABEL_321:
        if ((v150 & 0xC000000000000001) != 0)
        {
LABEL_366:
          v157 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v150 + 16))
          {
            __break(1u);
            break;
          }

          v157 = *(v150 + 32);
        }

        v158 = *(v157 + 112);
        v159 = *(v157 + 120);
        v194 = 0;

        LOBYTE(v158) = sub_10022464C(v158, v159);

        if (v158)
        {
          v160 = v186;
          v186[28] = v194;
          *(v160 + 232) = 0;
        }
      }

      else
      {
        if (*(v194 + 16))
        {
          goto LABEL_321;
        }

LABEL_328:
      }

      v137 = v187;
LABEL_330:
      v194 = v20;
      if (v19)
      {
        v161 = 0;
        v162 = v137 & 0xC000000000000001;
        v163 = v137 & 0xFFFFFFFFFFFFFF8;
        v20 = 0xE300000000000000;
        while (1)
        {
          if (v162)
          {
            v164 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v165 = v161 + 1;
            if (__OFADD__(v161, 1))
            {
LABEL_346:
              __break(1u);
LABEL_347:
              v20 = v194;
              break;
            }
          }

          else
          {
            if (v161 >= *(v163 + 16))
            {
              __break(1u);
              goto LABEL_358;
            }

            v164 = *(v137 + 8 * v161 + 32);

            v165 = v161 + 1;
            if (__OFADD__(v161, 1))
            {
              goto LABEL_346;
            }
          }

          v166 = *(v164 + 48) == 5394003 && *(v164 + 56) == 0xE300000000000000;
          if (v166 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v164 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v189)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v167 = *(v194 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v188;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v137 = v187;
          }

          else
          {
          }

          ++v161;
          if (v165 == v19)
          {
            goto LABEL_347;
          }
        }
      }

      v194 = sub_10021A608(v168);
      sub_100218274(&v194);
      if (v27)
      {
        break;
      }

      v161 = v194;
      if (v194 < 0 || (v194 & 0x4000000000000000) != 0)
      {
LABEL_358:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_359:

LABEL_360:
          v173 = v186;
LABEL_361:
          v174 = v185;
          Date.init()();
          v182(v174, 0, 1, v183);
          return sub_1001CB2A0(v174, v173 + v184);
        }
      }

      else if (!*(v194 + 16))
      {
        goto LABEL_359;
      }

      if ((v161 & 0xC000000000000001) != 0)
      {
        v169 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_355;
      }

      if (*(v161 + 16))
      {
        v169 = *(v161 + 32);

LABEL_355:

        v170 = *(v169 + 112);
        v171 = *(v169 + 120);
        v194 = 0;

        v172 = sub_10022464C(v170, v171);

        if (!v172)
        {
          goto LABEL_360;
        }

        v173 = v186;
        v186[24] = v194;
        *(v173 + 200) = 0;
        goto LABEL_361;
      }

      __break(1u);
LABEL_364:
      v145 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }
  }

LABEL_368:

  __break(1u);
  return result;
}

uint64_t sub_100211A64(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v27[-v9];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v27[-v17];
  v19 = *a1;
  v20 = *a2;
  v21 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
  swift_beginAccess();
  sub_1001C2E78(v19 + v21, v10);
  v22 = *(v12 + 48);
  if (v22(v10, 1, v11) == 1)
  {
    Date.init()();
    if (v22(v10, 1, v11) != 1)
    {
      sub_1001AC99C(v10, &qword_100375738, &qword_1002EF900);
    }
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
  }

  v23 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
  swift_beginAccess();
  sub_1001C2E78(v20 + v23, v8);
  if (v22(v8, 1, v11) == 1)
  {
    Date.init()();
    if (v22(v8, 1, v11) != 1)
    {
      sub_1001AC99C(v8, &qword_100375738, &qword_1002EF900);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v8, v11);
  }

  v24 = static Date.> infix(_:_:)();
  v25 = *(v12 + 8);
  v25(v16, v11);
  v25(v18, v11);
  return v24 & 1;
}

void sub_100211D70(char a1)
{
  v2 = v1;
  LOBYTE(v1) = a1;
  v3 = type metadata accessor for FTMNetworkInfoDataModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v8 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v136 - v10;
  __chkstk_darwin(v9);
  v13 = &v136 - v12;
  if (qword_100374FA8 != -1)
  {
    goto LABEL_152;
  }

LABEL_2:
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v17 = sub_1001FD15C(_swiftEmptyArrayStorage);
    v18 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricDetailsClassObject;
    swift_beginAccess();
    v19 = *(v2 + v18);
    *(v2 + v18) = v17;

    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v20 = qword_100382508;
    v21 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
    swift_beginAccess();
    v22 = *&v20[v21];
    *&v20[v21] = _swiftEmptyArrayStorage;
    v23 = v20;

    sub_10020D3C0(1);
    v24 = *&v23[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = v150[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v150[0]) = (v25 & 1) == 0;

    static Published.subscript.setter();

    v26 = qword_100382508;
    v27 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
    swift_beginAccess();
    v28 = *&v26[v27];
    *&v26[v27] = _swiftEmptyArrayStorage;
    v29 = v26;

    v30 = *&v29[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCellStateObj];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v31 = v149[0];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v149[0]) = (v31 & 1) == 0;

    static Published.subscript.setter();

    return;
  }

  v137 = v4;
  v140 = v13;
  v4 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
  [*(v2 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
  if (qword_100375018 != -1)
  {
    goto LABEL_158;
  }

LABEL_5:
  if (*(qword_100382500 + 160))
  {
    goto LABEL_98;
  }

  v147 = *(qword_100382500 + 156);
  v14 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  v148 = v14;
  v15 = *&v14[v2];
  if (v15 >> 62)
  {
LABEL_169:
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v144 = v2;
  v136 = v4;
  v138 = v11;
  v139 = v8;
  if (!v13)
  {
    goto LABEL_58;
  }

  if (v13 < 1)
  {
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    return;
  }

  v16 = v15 & 0xC000000000000001;

  v4 = 0;
  v142 = v13;
  v143 = v15;
  v141 = v15 & 0xC000000000000001;
  do
  {
    if (v16)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v15 + 8 * v4 + 32);
    }

    if (*(v11 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) != v147)
    {
      goto LABEL_53;
    }

    v34 = v148;
    swift_beginAccess();

    v35 = sub_10021B49C(&v34[v2], v11);

    v1 = *&v34[v2];
    v8 = v1 >> 62;
    if (v1 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      v37 = v36 - v35;
      if (v36 < v35)
      {
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        swift_once();
        goto LABEL_2;
      }
    }

    else
    {
      v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = v36 - v35;
      if (v36 < v35)
      {
        goto LABEL_147;
      }
    }

    if (v35 < 0)
    {
      goto LABEL_148;
    }

    if (v8)
    {
      v13 = v36;
      v38 = _CocoaArrayWrapper.endIndex.getter();
      v36 = v13;
    }

    else
    {
      v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v38 < v36)
    {
      goto LABEL_149;
    }

    v13 = -v37;
    if (__OFSUB__(0, v37))
    {
      goto LABEL_150;
    }

    v145 = v36;
    v146 = v35;
    if (v8)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v39 - v37;
    if (__OFADD__(v39, v13))
    {
      goto LABEL_151;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v148[v2] = v1;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v8)
      {
LABEL_40:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
LABEL_39:
        v42 = *(v8 + 16);
      }

      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      *&v148[v2] = v1;
      v8 = v1 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_42;
    }

    if (v8)
    {
      goto LABEL_40;
    }

    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v40 > *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_39;
    }

LABEL_42:
    v2 = v8 + 32;
    v43 = (v8 + 32 + 8 * v146);
    type metadata accessor for FTMAllMetricsModel();
    swift_arrayDestroy();
    if (v37)
    {
      if (v1 >> 62)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v44 = *(v8 + 16);
      }

      v45 = v44 - v145;
      if (__OFSUB__(v44, v145))
      {
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        swift_once();
        goto LABEL_5;
      }

      v46 = (v2 + 8 * v145);
      if (v145 != v146 || v43 >= &v46[8 * v45])
      {
        memmove(v43, v46, 8 * v45);
      }

      if (v1 >> 62)
      {
        v47 = _CocoaArrayWrapper.endIndex.getter();
        v33 = v47 - v37;
        if (__OFADD__(v47, v13))
        {
          goto LABEL_154;
        }
      }

      else
      {
        v32 = *(v8 + 16);
        v33 = v32 - v37;
        if (__OFADD__(v32, v13))
        {
          goto LABEL_154;
        }
      }

      *(v8 + 16) = v33;
    }

    v2 = v144;
    *&v148[v144] = v1;
    swift_endAccess();
    sub_10020D3C0(0);
    v13 = v142;
    v15 = v143;
    v16 = v141;
LABEL_53:
    ++v4;
  }

  while (v13 != v4);

LABEL_58:
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v145 = 0;
  v48 = qword_100382508;
  v49 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
  v146 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
  swift_beginAccess();
  v148 = v48;
  v15 = *&v48[v49];
  v11 = *(v15 + 16);
  if (!v11)
  {
LABEL_71:
    v52 = v148;
    v53 = v148;
    v4 = v11;
    goto LABEL_72;
  }

  v8 = 0;
  v50 = 264;
  while (2)
  {
    if (*(v15 + v50 - 208) != 1)
    {
      if (*(v15 + v50 - 216) == v147)
      {
        goto LABEL_66;
      }

LABEL_63:
      ++v8;
      v50 += 208;
      if (v11 == v8)
      {
        goto LABEL_71;
      }

      continue;
    }

    break;
  }

  if (v147)
  {
    goto LABEL_63;
  }

LABEL_66:
  v4 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_171;
  }

  v51 = v148;
  if (v4 != v11)
  {
    v67 = v147;
    while (1)
    {
      if (v4 >= v11)
      {
        goto LABEL_155;
      }

      v87 = v15 + v50;
      if (*(v15 + v50) == 1)
      {
        if (!v67)
        {
          goto LABEL_102;
        }
      }

      else if (*(v87 - 8) == v67)
      {
        goto LABEL_102;
      }

      if (v4 != v8)
      {
        if (v8 >= v11)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v11 = 208 * v8;
        v88 = (v15 + 32 + 208 * v8);
        v151[0] = *v88;
        v89 = v88[1];
        v90 = v88[2];
        v91 = v88[4];
        v151[3] = v88[3];
        v151[4] = v91;
        v151[1] = v89;
        v151[2] = v90;
        v92 = v88[5];
        v93 = v88[6];
        v94 = v88[8];
        v151[7] = v88[7];
        v151[8] = v94;
        v151[5] = v92;
        v151[6] = v93;
        v95 = v88[9];
        v96 = v88[10];
        v97 = v88[11];
        *(&v151[11] + 9) = *(v88 + 185);
        v151[10] = v96;
        v151[11] = v97;
        v151[9] = v95;
        v99 = *(v87 - 24);
        v98 = (v87 - 24);
        v152[0] = v99;
        v100 = v98[1];
        v101 = v98[2];
        v102 = v98[4];
        v152[3] = v98[3];
        v152[4] = v102;
        v152[1] = v100;
        v152[2] = v101;
        v103 = v98[5];
        v104 = v98[6];
        v105 = v98[8];
        v152[7] = v98[7];
        v152[8] = v105;
        v152[5] = v103;
        v152[6] = v104;
        v106 = v98[9];
        v107 = v98[10];
        v108 = v98[11];
        *(&v152[11] + 9) = *(v98 + 185);
        v152[10] = v107;
        v152[11] = v108;
        v152[9] = v106;
        sub_100201470(v151, v150);
        sub_100201470(v152, v150);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v148[v146] = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_1001FA708(v15);
          *&v148[v146] = v15;
        }

        if (v8 >= *(v15 + 16))
        {
          goto LABEL_160;
        }

        v110 = (v15 + v11);
        v149[0] = *(v15 + v11 + 32);
        v111 = *(v15 + v11 + 48);
        v112 = *(v15 + v11 + 64);
        v113 = *(v15 + v11 + 96);
        v149[3] = *(v15 + v11 + 80);
        v149[4] = v113;
        v149[1] = v111;
        v149[2] = v112;
        v114 = *(v15 + v11 + 112);
        v115 = *(v15 + v11 + 128);
        v116 = *(v15 + v11 + 144);
        v149[8] = *(v15 + v11 + 160);
        v149[6] = v115;
        v149[7] = v116;
        v149[5] = v114;
        v117 = *(v15 + v11 + 176);
        v118 = *(v15 + v11 + 192);
        v119 = *(v15 + v11 + 208);
        *(&v149[11] + 9) = *(v15 + v11 + 217);
        v149[10] = v118;
        v149[11] = v119;
        v149[9] = v117;
        v110[2] = v152[0];
        v120 = v152[1];
        v121 = v152[2];
        v122 = v152[4];
        v110[5] = v152[3];
        v110[6] = v122;
        v110[3] = v120;
        v110[4] = v121;
        v123 = v152[5];
        v124 = v152[6];
        v125 = v152[8];
        v110[9] = v152[7];
        v110[10] = v125;
        v110[7] = v123;
        v110[8] = v124;
        v126 = v152[9];
        v127 = v152[10];
        v128 = v152[11];
        *(v110 + 217) = *(&v152[11] + 9);
        v110[12] = v127;
        v110[13] = v128;
        v110[11] = v126;
        sub_1002014CC(v149);
        v11 = v148;
        v2 = v146;
        *&v148[v146] = v15;
        if (v4 >= *(v15 + 16))
        {
          goto LABEL_161;
        }

        v68 = v15 + v50;
        v150[0] = *(v15 + v50 - 24);
        v69 = *(v15 + v50 - 8);
        v70 = *(v15 + v50 + 8);
        v71 = *(v15 + v50 + 40);
        v150[3] = *(v15 + v50 + 24);
        v150[4] = v71;
        v150[1] = v69;
        v150[2] = v70;
        v72 = *(v15 + v50 + 56);
        v73 = *(v15 + v50 + 72);
        v74 = *(v15 + v50 + 104);
        v150[7] = *(v15 + v50 + 88);
        v150[8] = v74;
        v150[5] = v72;
        v150[6] = v73;
        v75 = *(v15 + v50 + 120);
        v76 = *(v15 + v50 + 136);
        v77 = *(v15 + v50 + 152);
        *(&v150[11] + 9) = *(v15 + v50 + 161);
        v150[10] = v76;
        v150[11] = v77;
        v150[9] = v75;
        *(v68 - 24) = v151[0];
        v78 = v151[1];
        v79 = v151[2];
        v80 = v151[3];
        *(v68 + 40) = v151[4];
        *(v68 + 24) = v80;
        *(v68 + 8) = v79;
        *(v68 - 8) = v78;
        v81 = v151[5];
        v82 = v151[6];
        v83 = v151[7];
        *(v68 + 104) = v151[8];
        *(v68 + 88) = v83;
        *(v68 + 72) = v82;
        *(v68 + 56) = v81;
        v84 = v151[9];
        v85 = v151[10];
        v86 = v151[11];
        *(v68 + 161) = *(&v151[11] + 9);
        *(v68 + 152) = v86;
        *(v68 + 136) = v85;
        *(v68 + 120) = v84;
        sub_1002014CC(v150);
        *(v11 + v2) = v15;
        v67 = v147;
      }

      ++v8;
LABEL_102:
      ++v4;
      v11 = *(v15 + 16);
      v50 += 208;
      if (v4 == v11)
      {
        goto LABEL_69;
      }
    }
  }

  v4 = v11;
LABEL_69:
  v11 = v8;
  v52 = v148;
  if (v4 < v8)
  {
    __break(1u);
    goto LABEL_71;
  }

LABEL_72:
  sub_1001FCA28(v11, v4);
  swift_endAccess();
  sub_10020D3C0(1);
  v54 = *&v52[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v55 = v152[0];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v152[0]) = (v55 & 1) == 0;

  static Published.subscript.setter();

  v8 = qword_100382508;
  v56 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
  swift_beginAccess();
  v15 = *(v8 + v56);
  v2 = *(v15 + 16);
  if (!v2)
  {
    goto LABEL_83;
  }

  v4 = 0;
  v57 = 328;
  while (2)
  {
    if (*(v15 + v57 - 272) != 1)
    {
      if (*(v15 + v57 - 280) == v147)
      {
        goto LABEL_78;
      }

LABEL_75:
      ++v4;
      v57 += 296;
      if (v2 == v4)
      {
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  if (v147)
  {
    goto LABEL_75;
  }

LABEL_78:
  v11 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_172;
  }

  v58 = v8;
  if (v11 != v2)
  {
    v129 = v147;
    while (1)
    {
      if (v11 >= v2)
      {
        goto LABEL_156;
      }

      if (*(v15 + v57 + 24) == 1)
      {
        if (!v129)
        {
          goto LABEL_118;
        }
      }

      else if (*(v15 + v57 + 16) == v129)
      {
        goto LABEL_118;
      }

      if (v11 != v4)
      {
        if (v4 >= v2)
        {
          goto LABEL_162;
        }

        v2 = 296 * v4;
        memcpy(v151, (v15 + 32 + 296 * v4), 0x121uLL);
        memcpy(v152, (v15 + v57), 0x121uLL);
        sub_1001DFAB0(v151, v150);
        sub_1001DFAB0(v152, v150);
        v130 = swift_isUniquelyReferenced_nonNull_native();
        *(v8 + v56) = v15;
        if ((v130 & 1) == 0)
        {
          v15 = sub_1001FA730(v15);
          *(v8 + v56) = v15;
        }

        if (v4 >= *(v15 + 16))
        {
          goto LABEL_163;
        }

        v2 += v15;
        memcpy(v149, (v2 + 32), 0x121uLL);
        memcpy((v2 + 32), v152, 0x121uLL);
        sub_1001DFB0C(v149);
        *(v8 + v56) = v15;
        if (v11 >= *(v15 + 16))
        {
          goto LABEL_164;
        }

        memcpy(v150, (v15 + v57), 0x121uLL);
        memcpy((v15 + v57), v151, 0x121uLL);
        sub_1001DFB0C(v150);
        *(v8 + v56) = v15;
        v129 = v147;
      }

      ++v4;
LABEL_118:
      ++v11;
      v2 = *(v15 + 16);
      v57 += 296;
      if (v11 == v2)
      {
        goto LABEL_81;
      }
    }
  }

  v11 = v2;
LABEL_81:
  v2 = v4;
  if (v11 < v4)
  {
    __break(1u);
LABEL_83:
    v59 = v8;
    v11 = v2;
  }

  sub_1001FCC2C(v2, v11);
  swift_endAccess();
  v60 = *(v8 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCellStateObj);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v61 = v152[0];
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v152[0]) = (v61 & 1) == 0;

  static Published.subscript.setter();

  v8 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
  v2 = v144;
  swift_beginAccess();
  v15 = *(v2 + v8);
  v63 = (v15 + 16);
  v62 = *(v15 + 16);
  if (!v62)
  {
LABEL_95:
    v66 = v62;
    v4 = v136;
    goto LABEL_97;
  }

  v11 = 0;
  v4 = v136;
  v64 = ((*(v137 + 80) + 32) & ~*(v137 + 80));
  v65 = *(v137 + 72);
  v148 = v64;
  while (2)
  {
    if (v64[v15 + 8] != 1)
    {
      if (*&v64[v15] == v147)
      {
        break;
      }

      goto LABEL_87;
    }

    if (v147)
    {
LABEL_87:
      ++v11;
      v64 += v65;
      if (v62 == v11)
      {
        v66 = v62;
        v2 = v144;
        goto LABEL_97;
      }

      continue;
    }

    break;
  }

  v66 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    goto LABEL_173;
  }

  if (v66 != v62)
  {
    v4 = &v64[v65];
    while (v66 < v62)
    {
      v2 = v140;
      sub_10021C448(v15 + v4, v140, type metadata accessor for FTMNetworkInfoDataModel);
      v131 = *v2;
      if (*(v2 + 8))
      {
        v132 = 0;
      }

      else
      {
        v132 = *v2;
      }

      sub_10021C2E0(v2);
      if (v132 != v147)
      {
        if (v66 != v11)
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_165;
          }

          v133 = *v63;
          if (v11 >= *v63)
          {
            goto LABEL_166;
          }

          sub_10021C448(&v148[v15 + v11 * v65], v138, type metadata accessor for FTMNetworkInfoDataModel);
          if (v66 >= v133)
          {
            goto LABEL_167;
          }

          sub_10021C448(v15 + v4, v139, type metadata accessor for FTMNetworkInfoDataModel);
          v134 = swift_isUniquelyReferenced_nonNull_native();
          *(v144 + v8) = v15;
          if ((v134 & 1) == 0)
          {
            v15 = sub_1001FA67C(v15);
            *(v144 + v8) = v15;
          }

          sub_10021C33C(v139, &v148[v15 + v11 * v65]);
          v135 = v144;
          *(v144 + v8) = v15;
          if (v66 >= *(v15 + 16))
          {
            goto LABEL_168;
          }

          sub_10021C33C(v138, v15 + v4);
          *(v135 + v8) = v15;
        }

        ++v11;
      }

      ++v66;
      v63 = (v15 + 16);
      v62 = *(v15 + 16);
      v4 += v65;
      if (v66 == v62)
      {
        goto LABEL_93;
      }
    }

    goto LABEL_157;
  }

  v66 = v62;
LABEL_93:
  v62 = v11;
  v2 = v144;
  v4 = v136;
  if (v66 < v11)
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_97:
  sub_1001FCA54(v62, v66);
  swift_endAccess();
  sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
LABEL_98:
  [*(v2 + v4) unlock];
}

uint64_t sub_100212E50()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  __chkstk_darwin(v0);
  v27 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100374FA8 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v21 = sub_1002181D0();
  static DispatchQoS.background.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_1001AD0C8(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v22 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v23);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = swift_allocObject();
  v15 = v26;
  *(v14 + 16) = v26;
  aBlock[4] = sub_10021C2B8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_10031F2F0;
  v16 = _Block_copy(aBlock);
  v17 = v15;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  v18 = v27;
  v19 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v28 + 8))(v18, v19);
  (*(v24 + 8))(v12, v25);
}

id sub_100213350(uint64_t a1)
{
  v57 = type metadata accessor for TimeZone();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v57);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v48 - v7;
  v58 = type metadata accessor for Date();
  v9 = *(v58 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v58);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  result = swift_beginAccess();
  v14 = *(a1 + v12);
  if (v14 >> 62)
  {
LABEL_27:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result;
    p_cb = (&OBJC_PROTOCOL___CoreTelephonyClientDataDelegate + 64);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_23:
    v33 = *(p_cb + 325);
    [*(a1 + v33) lock];
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v34 = qword_100382508;
    v35 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
    swift_beginAccess();
    v36 = *&v34[v35];
    *&v34[v35] = _swiftEmptyArrayStorage;
    v37 = v34;

    sub_10020D3C0(1);
    v38 = *&v37[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v39 = v62;
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = !v39;

    static Published.subscript.setter();

    v40 = qword_100382508;
    v41 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
    swift_beginAccess();
    v42 = *&v40[v41];
    *&v40[v41] = _swiftEmptyArrayStorage;
    v43 = v40;

    v44 = *&v43[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCellStateObj];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v45 = v61;
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = !v45;

    static Published.subscript.setter();

    v46 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels;
    swift_beginAccess();
    v47 = *(a1 + v46);
    *(a1 + v46) = _swiftEmptyArrayStorage;

    sub_10020CF44(&unk_10031F328, sub_10021C2D0, &unk_10031F340);
    return [*(a1 + v33) unlock];
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  p_cb = &OBJC_PROTOCOL___CoreTelephonyClientDataDelegate.cb;
  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (v15 >= 1)
  {
    v48 = v12;
    v51 = *(p_cb + 325);
    v59 = (v9 + 48);
    v60 = v14 & 0xC000000000000001;
    v55 = (v9 + 32);
    v54 = (v2 + 8);
    v53 = "Cellular logging";
    v50 = (v9 + 8);

    v17 = 0;
    v9 = 0;
    v18 = v49;
    v19 = v58;
    v52 = v14;
    while (1)
    {
      if (v60)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v14 + 8 * v17 + 32);
      }

      v21 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      swift_beginAccess();
      sub_1001C2E78(v20 + v21, v8);
      if ((*v59)(v8, 1, v19) == 1)
      {

        sub_1001AC99C(v8, &qword_100375738, &qword_1002EF900);
      }

      else
      {
        v22 = a1;
        (*v55)(v18, v8, v19);
        if (qword_100374F80 != -1)
        {
          swift_once();
        }

        v23 = qword_100382470;
        v24 = v56;
        static TimeZone.current.getter();
        isa = TimeZone._bridgeToObjectiveC()().super.isa;
        (*v54)(v24, v57);
        [v23 setTimeZone:isa];

        v26 = String._bridgeToObjectiveC()();
        [v23 setDateFormat:v26];

        v27 = Date._bridgeToObjectiveC()().super.isa;
        v28 = [v23 stringFromDate:v27];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = sub_10020CACC();

        if (v29 < 881)
        {
          v19 = v58;
          (*v50)(v18, v58);

          a1 = v22;
          v14 = v52;
        }

        else
        {
          a1 = v22;
          [*(v22 + v51) lock];
          v2 = v48;
          swift_beginAccess();

          v12 = sub_10021B49C((v22 + v2), v20);

          v30 = *(v22 + v2);
          if (v30 >> 62)
          {
            if (v30 < 0)
            {
              v32 = *(v22 + v2);
            }

            v31 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = v52;
          if (v31 < v12)
          {
            __break(1u);
            goto LABEL_27;
          }

          sub_1001FE250(v12, v31);
          swift_endAccess();
          sub_10020D3C0(0);
          [*(a1 + v51) unlock];

          v18 = v49;
          v19 = v58;
          (*v50)(v49, v58);
        }
      }

      if (v15 == ++v17)
      {

        p_cb = &OBJC_PROTOCOL___CoreTelephonyClientDataDelegate.cb;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100213B74(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v38 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = type metadata accessor for DispatchQoS();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100374F98 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1002EED40;
  v47 = a2;
  aBlock = dispatch thunk of CustomStringConvertible.description.getter();
  v42 = v17;
  v18._countAndFlagsBits = 44;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v31 = a2;
  v19._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v19);

  v20 = aBlock;
  v21 = v42;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_1001A76E8();
  *(v16 + 32) = v20;
  *(v16 + 40) = v21;
  os_log(_:dso:log:type:_:)();

  sub_1002181D0();
  static DispatchQoS.userInteractive.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_1001AD0C8(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v33 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = swift_allocObject();
  v24 = v37;
  v23[2] = a1;
  v23[3] = v24;
  v23[4] = v31;
  v45 = sub_10021BCE4;
  v46 = v23;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_10020C96C;
  v44 = &unk_10031F2A0;
  v25 = _Block_copy(&aBlock);

  v26 = v24;
  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  v27 = v38;
  v28 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v39 + 8))(v27, v28);
  (*(v35 + 8))(v15, v36);
}

uint64_t sub_10021415C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v130 = a3;
  v129 = a2;
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v125 = &v115 - v7;
  v8 = *(a1 + 16);
  v137 = a1;
  v119 = "kCTCellMonitorTAC";
  if (!v8)
  {
    goto LABEL_8;
  }

  result = sub_1001F66B8(0xD000000000000027, 0x80000001002B9780);
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1001A773C(*(a1 + 56) + 32 * result, &v152);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  if (__PAIR128__(0x80000001002BB8B0, 0xD000000000000025) != v149)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (!kCTCellMonitorCellRadioAccessTechnology)
    {
      goto LABEL_106;
    }

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v137 + 16))
    {
      v13 = sub_1001F66B8(v11, v12);
      v15 = v14;

      if (v15)
      {
        sub_1001A773C(*(v137 + 56) + 32 * v13, &v152);
        if (swift_dynamicCast())
        {
          result = kCTCellMonitorRadioAccessTechnologyGSM;
          if (!kCTCellMonitorRadioAccessTechnologyGSM)
          {
            goto LABEL_107;
          }

          v16 = v149;
          if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v16 + 1) == v17)
          {

LABEL_27:
            v136 = 0;
            v138 = 0;
            v132 = 1;
            goto LABEL_31;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
            goto LABEL_27;
          }
        }
      }
    }

    else
    {
    }

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a1 = v137;
    if (*(v137 + 16))
    {
      v20 = sub_1001F66B8(v18, v19);
      v22 = v21;
      a1 = v137;

      if (v22)
      {
        sub_1001A773C(*(a1 + 56) + 32 * v20, &v152);
        if (swift_dynamicCast())
        {
          result = kCTCellMonitorRadioAccessTechnologyUMTS;
          if (!kCTCellMonitorRadioAccessTechnologyUMTS)
          {
            goto LABEL_108;
          }

          v23 = v149;
          if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v23 + 1) == v24)
          {
          }

          else
          {
            v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v26 & 1) == 0)
            {
              v136 = 0;
              v132 = 0;
              v138 = 0;
              goto LABEL_31;
            }
          }

          v132 = 0;
          v138 = 0;
          v136 = 1;
LABEL_31:
          a1 = v137;
          goto LABEL_32;
        }
      }
    }

    else
    {
    }

    v136 = 0;
    v132 = 0;
    v138 = 0;
    goto LABEL_32;
  }

LABEL_7:
  v136 = 0;
  v132 = 0;
  v138 = 1;
LABEL_32:
  v27 = a1 + 64;
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 64);
  v127 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
  v134 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  v31 = (v28 + 63) >> 6;
  v131 = "om CT %{private}s";
  v118 = "dioAccessTechnologyLTE";
  v135 = "snr_heartbeat_nr";
  v117 = "kCTCellMonitorUARFCN";
  v116 = 0x80000001002BCF10;

  v32 = 0;
  v133 = 0;
  v128 = a1 + 64;
  v126 = v31;
  while (v30)
  {
    v33 = v32;
LABEL_47:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = v36 | (v33 << 6);
    v38 = (*(a1 + 48) + 16 * v37);
    v40 = *v38;
    v39 = v38[1];
    sub_1001A773C(*(a1 + 56) + 32 * v37, &v147);
    *&v149 = v40;
    *(&v149 + 1) = v39;
    sub_100201570(&v147, &v150);

LABEL_48:
    v152 = v149;
    v153[0] = v150;
    v153[1] = v151;
    v41 = *(&v149 + 1);
    if (!*(&v149 + 1))
    {
    }

    v42 = v152;
    v146[0] = v152;
    v146[1] = *(&v149 + 1);
    sub_100201570(v153, &v149);

    v43 = sub_10021BCF0(v138, v42, v41, v132, v136);
    v45 = v44;
    LODWORD(v139) = v46;
    v47 = v43;
    v144 = v43;
    v145 = v44;
    v48 = v42;
    v49 = String.lowercased()();

    v50 = String.lowercased()();
    if (v49._countAndFlagsBits == v50._countAndFlagsBits && v49._object == v50._object)
    {
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v51 & 1) == 0)
      {
        v141 = v45;
        v56 = v48;
        v55 = v47;
        a1 = v137;
        goto LABEL_59;
      }
    }

    v144 = 5521746;
    v145 = 0xE300000000000000;

    strcpy(v146, "Network PLMN");
    BYTE5(v146[1]) = 0;
    HIWORD(v146[1]) = -5120;
    *&v143 = 0;
    *(&v143 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v52._countAndFlagsBits = 32;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    a1 = v137;
    if (*(v137 + 16) && (v53 = sub_1001F66B8(0xD000000000000011, v118 | 0x8000000000000000), (v54 & 1) != 0))
    {
      sub_1001A773C(*(a1 + 56) + 32 * v53, v142);
      sub_100201570(v142, &v147);
    }

    else
    {
      v148 = &type metadata for String;
      *&v147 = 0;
      *(&v147 + 1) = 0xE000000000000000;
    }

    _print_unlocked<A, B>(_:_:)();
    sub_1001A5654(&v147);
    v148 = &type metadata for String;
    v147 = v143;
    sub_1001A5654(&v149);
    sub_100201570(&v147, &v149);
    v141 = 0xE300000000000000;
    LODWORD(v139) = 1;
    v55 = 5521746;
    v56 = 0x206B726F7774654ELL;
    v41 = 0xEC0000004E4D4C50;
LABEL_59:
    v140 = v56;
    v57 = String.lowercased()();
    v58 = String.lowercased()();
    if (v57._countAndFlagsBits == v58._countAndFlagsBits && v57._object == v58._object)
    {

      v59 = v141;
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v59 = v141;
      if ((v60 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    *&v143 = 0;
    *(&v143 + 1) = 0xE000000000000000;
    if (*(a1 + 16) && (v61 = sub_1001F66B8(v140, v41), (v62 & 1) != 0))
    {
      sub_1001A773C(*(a1 + 56) + 32 * v61, v142);
      sub_100201570(v142, &v147);
    }

    else
    {
      v148 = &type metadata for String;
      *&v147 = 0;
      *(&v147 + 1) = 0xE000000000000000;
    }

    _print_unlocked<A, B>(_:_:)();
    sub_1001A5654(&v147);
    v63 = sub_1001E248C(v143, *(&v143 + 1));
    if ((v64 & 1) == 0 && v63 == 2)
    {
      *&v143 = 0;
      *(&v143 + 1) = 0xE000000000000000;
      if (*(a1 + 16) && (v65 = sub_1001F66B8(0xD000000000000027, v119 | 0x8000000000000000), (v66 & 1) != 0))
      {
        sub_1001A773C(*(a1 + 56) + 32 * v65, v142);
        sub_100201570(v142, &v147);
      }

      else
      {
        v148 = &type metadata for String;
        *&v147 = 0;
        *(&v147 + 1) = 0xE000000000000000;
      }

      _print_unlocked<A, B>(_:_:)();
      sub_1001A5654(&v147);
      v67 = String.lowercased()();

      v68 = String.lowercased()();
      if (v67._countAndFlagsBits == v68._countAndFlagsBits && v67._object == v68._object)
      {
      }

      else
      {
        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v69 & 1) == 0)
        {
          goto LABEL_79;
        }
      }

      v148 = &type metadata for String;
      *&v147 = 51;
      *(&v147 + 1) = 0xE100000000000000;
      sub_1001A5654(&v149);
      sub_100201570(&v147, &v149);
    }

LABEL_79:
    if (!v138)
    {
      goto LABEL_89;
    }

    v70 = String.lowercased()();
    v71 = String.lowercased()();
    if (v70._countAndFlagsBits == v71._countAndFlagsBits && v70._object == v71._object)
    {
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v72 & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    if (!*(a1 + 16) || (v73 = sub_1001F66B8(0xD00000000000001CLL, v135 | 0x8000000000000000), (v74 & 1) == 0))
    {
LABEL_89:
      if ((v139 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_90;
    }

    sub_1001A773C(*(a1 + 56) + 32 * v73, &v147);
    if (swift_dynamicCast() & 1) != 0 || ((v139 ^ 1))
    {
LABEL_35:
      sub_1001A5654(&v149);

      goto LABEL_36;
    }

LABEL_90:
    *&v147 = v55;
    *(&v147 + 1) = v59;

    v75._countAndFlagsBits = 126;
    v75._object = 0xE100000000000000;
    String.append(_:)(v75);
    v76 = v130;
    *&v142[0] = v130;
    v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v77);

    v78 = v147;
    v79 = v129;
    [*(v129 + v127) lock];
    v80 = v134;
    swift_beginAccess();
    v81 = v76;
    v82 = v133;
    result = sub_100219E58((v79 + v80), v81, &v144, v146);
    v133 = v82;
    v83 = *(v79 + v80);
    if (v83 >> 62)
    {
      v113 = result;
      v84 = _CocoaArrayWrapper.endIndex.getter();
      result = v113;
    }

    else
    {
      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = v140;
    if (v84 < result)
    {
      goto LABEL_105;
    }

    sub_1001FE250(result, v84);
    swift_endAccess();
    sub_10020D3C0(0);
    v124 = v55;
    v123 = *(&v78 + 1);
    v139 = v78;
    if (v136 && (v85 == 0xD000000000000014 && v116 == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      *&v147 = v85;
      *(&v147 + 1) = v41;

      v86._countAndFlagsBits = 0x53544D555FLL;
      v86._object = 0xE500000000000000;
      String.append(_:)(v86);
      v122 = *(&v147 + 1);
      v140 = v147;
    }

    else
    {

      v122 = v41;
    }

    *&v147 = 0;
    *(&v147 + 1) = 0xE000000000000000;
    v87 = v141;

    _print_unlocked<A, B>(_:_:)();
    v120 = *(&v147 + 1);
    v121 = v147;
    v88 = v125;
    Date.init()();
    v89 = type metadata accessor for Date();
    v90 = *(*(v89 - 8) + 56);
    v90(v88, 0, 1, v89);
    v91 = type metadata accessor for FTMAllMetricsModel();
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    v94 = swift_allocObject();
    v94[2] = 0;
    v94[3] = 0xE000000000000000;
    v94[4] = 0;
    v94[5] = 0xE000000000000000;
    v94[6] = 0;
    v94[7] = 0xE000000000000000;
    v94[8] = 0;
    v94[9] = 0xE000000000000000;
    v94[10] = 0;
    v94[11] = 0xE000000000000000;
    v94[12] = 0;
    v94[13] = 0xE000000000000000;
    v94[14] = 0;
    v94[15] = 0xE000000000000000;
    v94[16] = 0;
    v94[17] = 0xE000000000000000;
    v95 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    v90(v94 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp, 1, 1, v89);
    v96 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    *(v94 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) = 0;
    v97 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    *(v94 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) = 1;
    v98 = v123;
    v94[2] = v139;
    v94[3] = v98;
    v94[4] = v124;
    v94[5] = v87;
    v141 = v87;
    v99 = v94[9];
    v100 = v122;
    v94[8] = v140;
    v94[9] = v100;

    v101 = sub_100223914();
    v102 = v94[7];
    v94[6] = v101;
    v94[7] = v103;

    v104 = v94[17];
    v105 = v120;
    v94[16] = v121;
    v94[17] = v105;

    v107 = sub_100223AD4(v106);
    v108 = v94[13];
    v94[12] = v107;
    v94[13] = v109;

    v110 = v94[11];
    v94[10] = 0;
    v94[11] = 0xE000000000000000;

    swift_beginAccess();
    sub_1001CB2A0(v125, v94 + v95);
    swift_endAccess();
    *(v94 + v96) = v130;
    *(v94 + v97) = 1;
    v111 = v129;
    v112 = v134;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v111 + v112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v111 + v112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v114 = *((*(v111 + v112) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10020D3C0(0);
    [*(v111 + v127) unlock];

    sub_1001A5654(&v149);

    a1 = v137;
LABEL_36:
    v27 = v128;
    v31 = v126;
  }

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
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v31)
    {
      v30 = 0;
      v150 = 0u;
      v151 = 0u;
      v32 = v35;
      v149 = 0u;
      goto LABEL_48;
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
  return result;
}

uint64_t sub_100215264(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  __chkstk_darwin(v2);
  v66 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Metric(0);
  v61 = *(v5 - 1);
  v6 = *(v61 + 64);
  __chkstk_darwin(v5);
  v60 = v7;
  v62 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v57 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = type metadata accessor for DispatchQoS();
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  __chkstk_darwin(v13);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100374F98 != -1)
  {
    swift_once();
  }

  v56 = qword_100382480;
  v55[1] = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002EED40;
  v18 = [*(a1 + v5[5]) description];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  aBlock = v19;
  v71 = v21;
  v22._countAndFlagsBits = 44;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  LODWORD(v69) = *(a1 + v5[13]);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 44;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25 = [*(a1 + v5[6]) description];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 44;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = [*(a1 + v5[7]) description];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 44;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  v37 = [*(a1 + v5[9]) description];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v42 = aBlock;
  v43 = v71;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_1001A76E8();
  *(v17 + 32) = v42;
  *(v17 + 40) = v43;
  os_log(_:dso:log:type:_:)();

  sub_1002181D0();
  static DispatchQoS.userInteractive.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_1001AD0C8(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v58 + 104))(v57, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
  v44 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v45 = v62;
  sub_10021C448(a1, v62, type metadata accessor for Metric);
  v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v47 = (v60 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_10021C3E0(v45, v48 + v46, type metadata accessor for Metric);
  v49 = v65;
  *(v48 + v47) = v65;
  v74 = sub_10021B30C;
  v75 = v48;
  aBlock = _NSConcreteStackBlock;
  v71 = 1107296256;
  v72 = sub_10020C96C;
  v73 = &unk_10031F250;
  v50 = _Block_copy(&aBlock);
  v51 = v49;
  static DispatchQoS.unspecified.getter();
  v69 = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1001AD0C8(&qword_1003784B0, &unk_100377090, &qword_1002F2CA0);
  v52 = v66;
  v53 = v68;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v50);

  (*(v67 + 8))(v52, v53);
  (*(v63 + 8))(v16, v64);
}

id sub_100215A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v232 - v6;
  v8 = type metadata accessor for Metric(0);
  v9 = *(a1 + v8[5]);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 18229 && v10 == 0xE200000000000000)
  {

LABEL_23:
    v21 = sub_10021BA8C();
    __chkstk_darwin(v21);
    *(&v232 - 2) = a1;
    v22 = sub_1001E2ED0(sub_10021C4D4, (&v232 - 4), v21);

    if ((v22 & 1) == 0)
    {
      return result;
    }

    v24 = [v9 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v244._countAndFlagsBits = v25;
    v244._object = v27;
    v28._countAndFlagsBits = 126;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    v29 = v8;
    v240 = *(a1 + v8[13]);
    *v243 = v240;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    object = v244._object;
    countAndFlagsBits = v244._countAndFlagsBits;
    v241 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
    __chkstk_darwin([*(a2 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock]);
    *(&v232 - 2) = a1;
    v31 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v32 = sub_10021A384(sub_10021BC84, (&v232 - 4));
    v33 = *(a2 + v31);
    if (v33 >> 62)
    {
      v199 = v32;
      v34 = _CocoaArrayWrapper.endIndex.getter();
      v32 = v199;
      if (v34 >= v199)
      {
LABEL_26:
        sub_1001FE250(v32, v34);
        swift_endAccess();
        sub_10020D3C0(0);
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v242 = a2;
        v233 = v36;
        v37 = *(a1 + v29[8]);
        v38 = v7;
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;
        v42 = *(a1 + v29[9]);
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v234 = v44;
        v235 = v43;
        v45 = *(a1 + v29[6]);
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v236 = v47;
        v237 = v46;
        Date.init()();
        v48 = type metadata accessor for Date();
        v49 = *(*(v48 - 8) + 56);
        v49(v38, 0, 1, v48);
        v50 = type metadata accessor for FTMAllMetricsModel();
        v51 = *(v50 + 48);
        v52 = *(v50 + 52);
        v53 = swift_allocObject();
        v53[2] = 0;
        v53[3] = 0xE000000000000000;
        v53[4] = 0;
        v53[5] = 0xE000000000000000;
        v53[6] = 0;
        v53[7] = 0xE000000000000000;
        v53[8] = 0;
        v53[9] = 0xE000000000000000;
        v53[10] = 0;
        v53[11] = 0xE000000000000000;
        v53[12] = 0;
        v53[13] = 0xE000000000000000;
        v53[14] = 0;
        v53[15] = 0xE000000000000000;
        v53[16] = 0;
        v53[17] = 0xE000000000000000;
        v54 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        v49(v53 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp, 1, 1, v48);
        v55 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
        *(v53 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) = 0;
        v56 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
        *(v53 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) = 1;
        v57 = object;
        v53[2] = countAndFlagsBits;
        v53[3] = v57;
        v58 = v233;
        v53[4] = v35;
        v53[5] = v58;
        v29 = v242;
        v59 = v53[9];
        v53[8] = v39;
        v53[9] = v41;

        v60 = sub_100223914();
        v61 = v53[7];
        v53[6] = v60;
        v53[7] = v62;

        v63 = v53[17];
        v64 = v234;
        v53[16] = v235;
        v53[17] = v64;

        v66 = sub_100223AD4(v65);
        v67 = v53[13];
        v53[12] = v66;
        v53[13] = v68;

        v69 = v53[11];
        v70 = v236;
        v53[10] = v237;
        v53[11] = v70;

        swift_beginAccess();
        sub_1001CB2A0(v38, v53 + v54);
        swift_endAccess();
        *(v53 + v55) = v240;
        *(v53 + v56) = 1;
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v29 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v29 + v31) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_27:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          sub_10020D3C0(0);
          v71 = *(v29 + v241);
LABEL_28:
          [v71 unlock];
        }

LABEL_74:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_27;
      }
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34 >= v32)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_74;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_23;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 4543564 && v13 == 0xE300000000000000)
  {

LABEL_31:
    v72 = *(a1 + v8[6]);
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 0x207942206C6C6543 && v73 == 0xEC000000646E6142)
    {
    }

    else
    {
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v75 & 1) == 0)
      {
        v76 = sub_10021B808();
        __chkstk_darwin(v76);
        *(&v232 - 2) = a1;
        v77 = sub_1001E2ED0(sub_10021BA48, (&v232 - 4), v76);

        if ((v77 & 1) == 0)
        {
          return result;
        }

        v78 = [v9 description];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v244._countAndFlagsBits = v79;
        v244._object = v81;
        v82._countAndFlagsBits = 126;
        v82._object = 0xE100000000000000;
        String.append(_:)(v82);
        v242 = v8;
        v240 = *(a1 + v8[13]);
        *v243 = v240;
        v83._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v83);

        object = v244._object;
        countAndFlagsBits = v244._countAndFlagsBits;
        v241 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
        __chkstk_darwin([*(a2 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock]);
        *(&v232 - 2) = a1;
        v84 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
        swift_beginAccess();
        v85 = sub_10021A384(sub_10021C4F0, (&v232 - 4));
        v86 = *(a2 + v84);
        if (v86 >> 62)
        {
          v231 = v85;
          v87 = _CocoaArrayWrapper.endIndex.getter();
          v85 = v231;
          if (v87 >= v231)
          {
LABEL_39:
            sub_1001FE250(v85, v87);
            swift_endAccess();
            sub_10020D3C0(0);
            v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v233 = v89;
            v234 = v88;
            v90 = v242;
            v91 = *(a1 + *(v242 + 32));
            v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v94 = v93;
            v95 = *(a1 + *(v90 + 36));
            v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v235 = v97;
            v236 = v96;
            v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v237 = v98;
            Date.init()();
            v99 = type metadata accessor for Date();
            v100 = *(*(v99 - 8) + 56);
            v100(v7, 0, 1, v99);
            v101 = type metadata accessor for FTMAllMetricsModel();
            v102 = *(v101 + 48);
            v103 = *(v101 + 52);
            v104 = swift_allocObject();
            *(v104 + 2) = 0;
            *(v104 + 3) = 0xE000000000000000;
            *(v104 + 4) = 0;
            *(v104 + 5) = 0xE000000000000000;
            *(v104 + 6) = 0;
            *(v104 + 7) = 0xE000000000000000;
            *(v104 + 8) = 0;
            *(v104 + 9) = 0xE000000000000000;
            *(v104 + 10) = 0;
            *(v104 + 11) = 0xE000000000000000;
            *(v104 + 12) = 0;
            *(v104 + 13) = 0xE000000000000000;
            *(v104 + 14) = 0;
            *(v104 + 15) = 0xE000000000000000;
            *(v104 + 16) = 0;
            *(v104 + 17) = 0xE000000000000000;
            v105 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
            v100(&v104[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v99);
            v106 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
            *&v104[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
            v107 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
            v104[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
            v108 = object;
            *(v104 + 2) = countAndFlagsBits;
            *(v104 + 3) = v108;
            v109 = v233;
            *(v104 + 4) = v234;
            *(v104 + 5) = v109;
            v110 = *(v104 + 9);
            *(v104 + 8) = v92;
            *(v104 + 9) = v94;

            v111 = sub_100223914();
            v112 = *(v104 + 7);
            *(v104 + 6) = v111;
            *(v104 + 7) = v113;

            v114 = *(v104 + 17);
            v115 = v235;
            *(v104 + 16) = v236;
            *(v104 + 17) = v115;

            v117 = sub_100223AD4(v116);
            v118 = *(v104 + 13);
            *(v104 + 12) = v117;
            *(v104 + 13) = v119;

            v120 = *(v104 + 11);
            v121 = v237;
            *(v104 + 10) = v242;
            *(v104 + 11) = v121;

            swift_beginAccess();
            sub_1001CB2A0(v7, &v104[v105]);
            swift_endAccess();
            *&v104[v106] = v240;
            v104[v107] = 1;
            swift_beginAccess();

            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(a2 + v84) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(a2 + v84) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_40:
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();
              sub_10020D3C0(0);
              v71 = *(a2 + v241);
              goto LABEL_28;
            }

LABEL_88:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            goto LABEL_40;
          }
        }

        else
        {
          v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v87 >= v85)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_88;
      }
    }

    v122 = *(a1 + v8[8]);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = String.lowercased()();

    v244 = v123;
    strcpy(v243, "-section-dl_bw");
    v243[15] = -18;
    sub_1001A56A0();
    v124 = StringProtocol.contains<A>(_:)();

    if ((v124 & 1) == 0)
    {
      return result;
    }

    v125 = v72;
    v244._countAndFlagsBits = 0xD000000000000010;
    v244._object = 0x80000001002BCE40;
    v242 = v8;
    countAndFlagsBits = *(a1 + v8[13]);
    v240 = v7;
    *v243 = countAndFlagsBits;
    v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v126);

    v29 = v244._countAndFlagsBits;
    v127 = v244._object;
    v241 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
    [*(a2 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
    v128 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    v129 = swift_beginAccess();
    v130 = *(a2 + v128);
    __chkstk_darwin(v129);
    object = v29;
    *(&v232 - 4) = v29;
    *(&v232 - 3) = v127;
    *(&v232 - 2) = a1;

    v131 = sub_1001E21AC(sub_10021BA68, &v232 - 6, v130);
    v132 = v131;
    if (v131 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_45;
      }
    }

    else if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_45:

      v7 = v242;
      if ((v132 & 0xC000000000000001) != 0)
      {
        v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_83;
        }

        v134 = *(v132 + 32);
      }

      v135 = v134[16];
      v136 = v134[17];
      v137 = *(a1 + *(v7 + 9));
      if (v135 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v136 == v138)
      {

LABEL_69:

        return [*(a2 + v241) unlock];
      }

      v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v144 & 1) == 0)
      {
        v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v192 = v134[17];
        v134[16] = v191;
        v134[17] = v193;

        v195 = sub_100223AD4(v194);
        v196 = v134[13];
        v134[12] = v195;
        v134[13] = v197;

        goto LABEL_69;
      }

LABEL_79:

      return [*(a2 + v241) unlock];
    }

    v200 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v233 = v201;
    v234 = v200;
    v202 = *(a1 + *(v242 + 36));
    v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v235 = v204;
    v236 = v203;
    v242 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v237 = v205;
    v206 = v240;
    Date.init()();
    v207 = type metadata accessor for Date();
    v208 = *(*(v207 - 8) + 56);
    v208(v206, 0, 1, v207);
    v209 = type metadata accessor for FTMAllMetricsModel();
    v210 = *(v209 + 48);
    v211 = *(v209 + 52);
    v212 = swift_allocObject();
    v212[2] = 0;
    v212[3] = 0xE000000000000000;
    v212[4] = 0;
    v212[5] = 0xE000000000000000;
    v212[6] = 0;
    v212[7] = 0xE000000000000000;
    v212[8] = 0;
    v212[9] = 0xE000000000000000;
    v212[10] = 0;
    v212[11] = 0xE000000000000000;
    v212[12] = 0;
    v212[13] = 0xE000000000000000;
    v212[14] = 0;
    v212[15] = 0xE000000000000000;
    v212[16] = 0;
    v212[17] = 0xE000000000000000;
    v213 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    v208(v212 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp, 1, 1, v207);
    v214 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    *(v212 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) = 0;
    v215 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    *(v212 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) = 1;
    v212[2] = object;
    v212[3] = v127;
    v212[4] = 0x544C20726568744FLL;
    v212[5] = 0xEF73646E61422045;
    v216 = v212[9];
    v217 = v233;
    v212[8] = v234;
    v212[9] = v217;

    v218 = sub_100223914();
    v219 = v212[7];
    v212[6] = v218;
    v212[7] = v220;

    v221 = v212[17];
    v222 = v235;
    v212[16] = v236;
    v212[17] = v222;

    v224 = sub_100223AD4(v223);
    v225 = v212[13];
    v212[12] = v224;
    v212[13] = v226;

    v227 = v212[11];
    v228 = v237;
    v212[10] = v242;
    v212[11] = v228;

    swift_beginAccess();
    sub_1001CB2A0(v206, v212 + v213);
    swift_endAccess();
    *(v212 + v214) = countAndFlagsBits;
    *(v212 + v215) = 1;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a2 + v128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v230 = *((*(a2 + v128) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10020D3C0(0);
    goto LABEL_79;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_31;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 5067591 && v16 == 0xE300000000000000)
  {
    goto LABEL_18;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 1398033749 && v19 == 0xE400000000000000)
    {
LABEL_18:

      goto LABEL_19;
    }

    v198 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v198 & 1) == 0)
    {
      return result;
    }
  }

LABEL_19:
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 5067591 && v20 == 0xE300000000000000)
  {
  }

  else
  {
    v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v139 & 1) == 0)
    {
      v140 = sub_10021B6C4();
      v141 = v140;
      goto LABEL_63;
    }
  }

  sub_1001A551C(&qword_1003770E0, &qword_1002F22B8);
  v140 = swift_allocObject();
  v141 = v140;
  *(v140 + 16) = xmmword_1002F2BB0;
  *(v140 + 32) = 0xD000000000000016;
  *(v140 + 40) = 0x80000001002B95F0;
  if (qword_100375018 != -1)
  {
    v140 = swift_once();
  }

  v142 = 0x80000001002B96C0;
  if (*(qword_100382500 + 26))
  {
    v143 = 0;
  }

  else
  {
    v143 = 0xD000000000000014;
  }

  if (*(qword_100382500 + 26))
  {
    v142 = 0xE000000000000000;
  }

  v141[6] = v143;
  v141[7] = v142;
  v141[8] = 0xD000000000000011;
  v141[9] = 0x80000001002BCE00;
  v141[10] = 0xD000000000000013;
  v141[11] = 0x80000001002BCE20;
  v141[12] = 0x74635F70637372;
  v141[13] = 0xE700000000000000;
  v141[14] = 0x74635F306E6365;
  v141[15] = 0xE700000000000000;
LABEL_63:
  __chkstk_darwin(v140);
  *(&v232 - 2) = a1;
  v145 = sub_1001E2ED0(sub_10021C4D4, (&v232 - 4), v141);

  if (v145)
  {
    v146 = [v9 description];
    v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v149 = v148;

    v244._countAndFlagsBits = v147;
    v244._object = v149;
    v150._countAndFlagsBits = 126;
    v150._object = 0xE100000000000000;
    String.append(_:)(v150);
    v29 = v8;
    v240 = *(a1 + v8[13]);
    *v243 = v240;
    v151._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v151);

    object = v244._object;
    countAndFlagsBits = v244._countAndFlagsBits;
    v241 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
    __chkstk_darwin([*(a2 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock]);
    *(&v232 - 2) = a1;
    v125 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v133 = sub_10021A384(sub_10021C4F0, (&v232 - 4));
    v152 = *(a2 + v125);
    if (!(v152 >> 62))
    {
      v153 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v153 >= v133)
      {
        goto LABEL_66;
      }

LABEL_84:
      __break(1u);
      goto LABEL_74;
    }

LABEL_83:
    v229 = v133;
    v153 = _CocoaArrayWrapper.endIndex.getter();
    v133 = v229;
    if (v153 >= v229)
    {
LABEL_66:
      v154 = v7;
      sub_1001FE250(v133, v153);
      swift_endAccess();
      sub_10020D3C0(0);
      v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v242 = a2;
      v233 = v156;
      v157 = *(a1 + v29[8]);
      v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v160 = v159;
      v161 = *(a1 + v29[9]);
      v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v234 = v163;
      v235 = v162;
      v164 = *(a1 + v29[6]);
      v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v236 = v166;
      v237 = v165;
      v167 = v154;
      Date.init()();
      v168 = type metadata accessor for Date();
      v169 = *(*(v168 - 8) + 56);
      v169(v167, 0, 1, v168);
      v170 = type metadata accessor for FTMAllMetricsModel();
      v171 = *(v170 + 48);
      v172 = *(v170 + 52);
      v173 = swift_allocObject();
      v173[2] = 0;
      v173[3] = 0xE000000000000000;
      v173[4] = 0;
      v173[5] = 0xE000000000000000;
      v173[6] = 0;
      v173[7] = 0xE000000000000000;
      v173[8] = 0;
      v173[9] = 0xE000000000000000;
      v173[10] = 0;
      v173[11] = 0xE000000000000000;
      v173[12] = 0;
      v173[13] = 0xE000000000000000;
      v173[14] = 0;
      v173[15] = 0xE000000000000000;
      v173[16] = 0;
      v173[17] = 0xE000000000000000;
      v174 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v169(v173 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp, 1, 1, v168);
      v175 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *(v173 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) = 0;
      v176 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      *(v173 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) = 1;
      v177 = object;
      v173[2] = countAndFlagsBits;
      v173[3] = v177;
      v178 = v233;
      v173[4] = v155;
      v173[5] = v178;
      v29 = v242;
      v179 = v173[9];
      v173[8] = v158;
      v173[9] = v160;

      v180 = sub_100223914();
      v181 = v173[7];
      v173[6] = v180;
      v173[7] = v182;

      v183 = v173[17];
      v184 = v234;
      v173[16] = v235;
      v173[17] = v184;

      v186 = sub_100223AD4(v185);
      v187 = v173[13];
      v173[12] = v186;
      v173[13] = v188;

      v189 = v173[11];
      v190 = v236;
      v173[10] = v237;
      v173[11] = v190;

      swift_beginAccess();
      sub_1001CB2A0(v167, v173 + v174);
      swift_endAccess();
      *(v173 + v175) = v240;
      *(v173 + v176) = 1;
      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v29 + v125) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v29 + v125) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }

      goto LABEL_74;
    }

    goto LABEL_84;
  }

  return result;
}

uint64_t sub_100216F3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 16) == a2 && *(*a1 + 24) == a3;
  if (v6 || (v7 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v8 = *(v5 + 64);
    v9 = *(v5 + 72);
    v10 = *(a4 + *(type metadata accessor for Metric(0) + 32));
    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v11)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v7 & 1;
}

uint64_t sub_100216FF0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = String.lowercased()();
  v6 = *(a2 + *(type metadata accessor for Metric(0) + 32));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = String.lowercased()();

  if (v5._countAndFlagsBits == v7._countAndFlagsBits && v5._object == v7._object)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1002170AC(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId);
  v5 = type metadata accessor for Metric(0);
  if (v4 != *(a2 + *(v5 + 52)))
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = v3[4];
  v8 = v3[5];
  v9 = *(a2 + *(v5 + 20));
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
LABEL_7:
      v13 = 0;
      return v13 & 1;
    }
  }

  v14 = v3[8];
  v15 = v3[9];
  v16 = objc_opt_self();

  v17 = [v16 mainBundle];
  v32._object = v15;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = v14;
  v19._object = v15;
  v20._countAndFlagsBits = v14;
  v20._object = v15;
  v32._countAndFlagsBits = v14;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v32);

  v22 = *(a2 + *(v6 + 32));
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  v26 = [v16 mainBundle];
  v33._object = v25;
  v27._countAndFlagsBits = v23;
  v27._object = v25;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = v23;
  v29._object = v25;
  v33._countAndFlagsBits = v23;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v33);

  if (v21._countAndFlagsBits == v30._countAndFlagsBits && v21._object == v30._object)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

void sub_1002172D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (qword_100374FA8 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002EED40;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1001A76E8();
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;

    os_log(_:dso:log:type:_:)();

    v6 = [objc_opt_self() generalPasteboard];
    v7 = String._bridgeToObjectiveC()();
    [v6 setString:v7];
  }
}

id sub_100217444()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  *&v0[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsGraphArray] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock;
  *&v0[v10] = [objc_allocWithZone(NSLock) init];
  *&v0[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricSheetData] = 0;
  v11 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricDetailsClassObject;
  *&v0[v11] = sub_1001FD15C(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_currentSelectedSubsId] = 0;
  v36 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_queueMetricGraph;
  v35[1] = sub_1002181D0();
  static DispatchQoS.background.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_10021B134(&qword_100377BD0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001A551C(&qword_100377BD8, &unk_1002F3710);
  sub_1001AD0C8(&qword_100377BE0, &qword_100377BD8, &unk_1002F3710);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  *&v0[v36] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_numberFormatter] = 0;
  *&v0[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkInfoDataModels] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandInfoDataModels] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCellStateObj;
  v13 = type metadata accessor for FTMPrimaryStateChanged();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  LOBYTE(v40) = 1;
  Published.init(initialValue:)();
  *&v0[v12] = v16;
  v17 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_neighbourCellStateObj;
  v18 = type metadata accessor for FTMNeighbourStateChanged();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  LOBYTE(v40) = 1;
  Published.init(initialValue:)();
  *&v0[v17] = v21;
  v22 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_networkDataStateObj;
  v23 = type metadata accessor for FTMNetworkInfoDataStateChanged(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  LOBYTE(v40) = 1;
  Published.init(initialValue:)();
  v40 = _swiftEmptyArrayStorage;
  sub_1001A551C(&qword_100377BE8, &qword_1002F4170);
  Published.init(initialValue:)();
  *&v0[v22] = v26;
  v27 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_bandDataObj;
  v28 = type metadata accessor for FTMBandInfoDataChanged(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v31 = swift_allocObject();
  v40 = _swiftEmptyArrayStorage;
  sub_1001A551C(&qword_1003770E8, &unk_1002F22C0);
  Published.init(initialValue:)();
  *&v1[v27] = v31;
  v32 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_urlSessionObj;
  *&v1[v32] = [objc_allocWithZone(type metadata accessor for FTMURLSessionViewModel()) init];
  v33 = type metadata accessor for FTMCellMonitorSharedClass();
  v39.receiver = v1;
  v39.super_class = v33;
  return objc_msgSendSuper2(&v39, "init");
}

id sub_10021790C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FTMCellMonitorSharedClass();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100217A90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FTMCellMonitorSharedClass();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100217ACC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = [objc_opt_self() decimalDigitCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  CharacterSet.inverted.getter();
  v32 = *(v5 + 8);
  v32(v9, v4);
  v13 = sub_10020C78C(a1, a2);
  if (v14)
  {
    if (v13 == 45 && v14 == 0xE100000000000000)
    {

LABEL_6:

      sub_10021AEA0(1uLL, a1, a2);

      a1 = static String._fromSubstring(_:)();
      a2 = v16;

      goto LABEL_8;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v37 = a1;
  v38 = a2;
  v35 = 46;
  v36 = 0xE100000000000000;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1001A56A0();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v17 = String.count.getter();
  v18 = String.count.getter();

  v20 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = String.count.getter();
  if (result)
  {
    if (v20 == 0x8000000000000000 && result == -1)
    {
      goto LABEL_35;
    }

    if (v20 / result == 1)
    {
      v37 = a1;
      v38 = a2;
      v35 = 46;
      v36 = 0xE100000000000000;
      v21 = StringProtocol.components<A>(separatedBy:)();

      v22 = *(v21 + 16);
      v23 = v22 != 0;
      if (v22)
      {
        v31 = v4;
        v24 = 0;
        v25 = (v21 + 40);
        while (v24 < *(v21 + 16))
        {
          v26 = *v25;
          v27 = HIBYTE(*v25) & 0xF;
          if ((*v25 & 0x2000000000000000) == 0)
          {
            v27 = *(v25 - 1) & 0xFFFFFFFFFFFFLL;
          }

          if (!v27 || (v37 = *(v25 - 1), v38 = v26, result = StringProtocol.rangeOfCharacter(from:options:range:)(), (v28 & 1) == 0))
          {
            v32(v11, v31);
            goto LABEL_30;
          }

          ++v24;
          v25 += 2;
          if (v22 == v24)
          {

            v4 = v31;
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

LABEL_28:
      v32(v11, v4);
    }

    else
    {
      v29 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v29 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v37 = a1;
        v38 = a2;
        StringProtocol.rangeOfCharacter(from:options:range:)();
        v23 = v30;
        v32(v11, v4);
      }

      else
      {
        v32(v11, v4);
LABEL_30:

        return 0;
      }
    }

    return v23;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100217F2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100217FA0()
{
  v1 = OBJC_IVAR____TtC11FTMInternal21FTMMetricDetailsClass__items;
  v2 = sub_1001A551C(&qword_100377BC8, &unk_1002F2D40);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FTMMetricDetailsClass()
{
  result = qword_100377AF8;
  if (!qword_100377AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021809C()
{
  sub_10021812C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10021812C()
{
  if (!qword_100377B08)
  {
    sub_1001A55C8(&qword_100376B70, &qword_1002F1BA8);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100377B08);
    }
  }
}

uint64_t sub_100218190@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FTMMetricDetailsClass();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1002181D0()
{
  result = qword_100377080;
  if (!qword_100377080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100377080);
  }

  return result;
}

uint64_t sub_10021821C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10021825C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100218274(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001FC82C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100218484(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_10021832C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1002183E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

Swift::Int sub_100218484(void *a1)
{
  v3 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v42 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = v42 - v16;
  v17 = a1[1];
  result = _minimumMergeRunLength(_:)(v17);
  v19 = v17;
  if (result < v17)
  {
    if (v17 >= -1)
    {
      v20 = result;
      v21 = v19 / 2;
      if (v19 <= 1)
      {
        v22 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FTMAllMetricsModel();
        v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) = v21;
      }

      v41 = v22 & 0xFFFFFFFFFFFFFF8;
      v56[0] = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
      v56[1] = v21;
      sub_100218918(v56, v55, a1, v20);
      *(v41 + 16) = 0;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v17 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (v17 >= 2)
  {
    v51 = v15;
    v52 = v7;
    v42[1] = v1;
    v23 = *a1;
    v24 = (v11 + 48);
    v47 = (v11 + 8);
    v48 = (v11 + 32);
    v25 = -1;
    v26 = 1;
    v53 = v23;
    v49 = (v11 + 48);
    v50 = v9;
    v43 = v17;
    do
    {
      v45 = v26;
      v46 = v25;
      v27 = v53[v26];
      v44 = v23;
      do
      {
        v28 = *v23;
        v29 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        sub_1001C2E78(v27 + v29, v9);
        v30 = *v24;
        if ((*v24)(v9, 1, v10) == 1)
        {

          Date.init()();
          if (v30(v9, 1, v10) != 1)
          {
            sub_1001AC99C(v9, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          (*v48)(v57, v9, v10);
        }

        v31 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v54 = v28;
        v32 = v28 + v31;
        v33 = v52;
        sub_1001C2E78(v32, v52);
        if (v30(v33, 1, v10) == 1)
        {
          v34 = v51;
          Date.init()();
          v35 = v10;
          if (v30(v33, 1, v10) != 1)
          {
            sub_1001AC99C(v33, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          v34 = v51;
          (*v48)(v51, v33, v10);
          v35 = v10;
        }

        v36 = v57;
        v37 = static Date.> infix(_:_:)();
        v38 = *v47;
        (*v47)(v34, v35);
        v38(v36, v35);

        v24 = v49;
        v9 = v50;
        v10 = v35;
        if ((v37 & 1) == 0)
        {
          break;
        }

        if (!v53)
        {
          goto LABEL_28;
        }

        v39 = *v23;
        v27 = v23[1];
        *v23 = v27;
        v23[1] = v39;
        --v23;
      }

      while (!__CFADD__(v25++, 1));
      v26 = v45 + 1;
      v23 = v44 + 1;
      v25 = v46 - 1;
    }

    while (v45 + 1 != v43);
  }

  return result;
}

uint64_t sub_100218918(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v134 = a1;
  v8 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v151 = &v130 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v130 - v16;
  __chkstk_darwin(v15);
  v19 = &v130 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v23 = __chkstk_darwin(v22);
  v152 = &v130 - v24;
  v25 = __chkstk_darwin(v23);
  v137 = &v130 - v26;
  result = __chkstk_darwin(v25);
  v143 = &v130 - v30;
  v142 = a3;
  v31 = *(a3 + 8);
  if (v31 < 1)
  {
    v34 = _swiftEmptyArrayStorage;
LABEL_110:
    a3 = *v134;
    if (!*v134)
    {
      goto LABEL_151;
    }

    a4 = v34;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_113:
      v155 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v142)
        {
          v126 = *(result + 16 * a4);
          v127 = result;
          v128 = *(result + 16 * (a4 - 1) + 40);
          sub_100219620((*v142 + 8 * v126), (*v142 + 8 * *(result + 16 * (a4 - 1) + 32)), (*v142 + 8 * v128), a3);
          if (v5)
          {
          }

          if (v128 < v126)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = sub_1001FA564(v127);
          }

          if (a4 - 2 >= *(v127 + 2))
          {
            goto LABEL_139;
          }

          v129 = &v127[16 * a4];
          *v129 = v126;
          *(v129 + 1) = v128;
          v155 = v127;
          sub_1001FA4D8(a4 - 1);
          result = v155;
          a4 = *(v155 + 2);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_149;
      }
    }

LABEL_145:
    result = sub_1001FA564(a4);
    goto LABEL_113;
  }

  v141 = v17;
  v131 = a4;
  v32 = 0;
  v33 = (v28 + 48);
  v149 = (v28 + 8);
  v150 = (v28 + 32);
  v34 = _swiftEmptyArrayStorage;
  v147 = v12;
  v35 = v151;
  v140 = v19;
  v146 = v29;
  v145 = (v28 + 48);
  while (1)
  {
    v36 = v32;
    if (v32 + 1 >= v31)
    {
      v46 = v32 + 1;
    }

    else
    {
      v144 = v31;
      v133 = v34;
      v37 = v32;
      v38 = *v142;
      v39 = *(*v142 + 8 * (v32 + 1));
      a3 = *(*v142 + 8 * v32);
      v153 = a3;
      v154 = v39;

      LODWORD(v139) = sub_100211A64(&v154, &v153);
      if (v5)
      {
      }

      a4 = v37 + 2;
      v132 = v37;
      v136 = 8 * v37;
      v40 = (v38 + 8 * v37 + 16);
      v138 = 0;
      while (1)
      {
        v46 = v144;
        if (v144 == a4)
        {
          break;
        }

        v47 = *(v40 - 1);
        v48 = *v40;
        v49 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v50 = v140;
        sub_1001C2E78(v48 + v49, v140);
        v51 = *v33;
        if ((*v33)(v50, 1, v20) == 1)
        {

          Date.init()();
          if (v51(v50, 1, v20) != 1)
          {
            sub_1001AC99C(v140, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          (*v150)(v143, v50, v20);
        }

        v52 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v53 = v47 + v52;
        v54 = v141;
        sub_1001C2E78(v53, v141);
        v55 = v51(v54, 1, v20);
        v148 = v47;
        if (v55 == 1)
        {
          v41 = v137;
          Date.init()();
          if (v51(v54, 1, v20) != 1)
          {
            sub_1001AC99C(v141, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          v41 = v137;
          (*v150)(v137, v54, v20);
        }

        v42 = v143;
        v43 = static Date.> infix(_:_:)();
        v44 = v41;
        a3 = v149;
        v45 = *v149;
        (*v149)(v44, v20);
        v45(v42, v20);

        ++a4;
        ++v40;
        v5 = v138;
        v35 = v151;
        if ((v139 ^ v43))
        {
          v46 = a4 - 1;
          break;
        }
      }

      v34 = v133;
      v36 = v132;
      v56 = v136;
      if (v139)
      {
        if (v46 < v132)
        {
          goto LABEL_144;
        }

        if (v132 < v46)
        {
          v57 = 8 * v46 - 8;
          v58 = v46;
          v59 = v132;
          do
          {
            if (v59 != --v58)
            {
              v61 = *v142;
              if (!*v142)
              {
                goto LABEL_148;
              }

              v60 = *(v61 + v56);
              *(v61 + v56) = *(v61 + v57);
              *(v61 + v57) = v60;
            }

            ++v59;
            v57 -= 8;
            v56 += 8;
          }

          while (v59 < v58);
        }
      }
    }

    v62 = v142[1];
    if (v46 >= v62)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v46, v36))
    {
      goto LABEL_141;
    }

    if (v46 - v36 >= v131)
    {
LABEL_37:
      v64 = v46;
      if (v46 < v36)
      {
        goto LABEL_140;
      }

      goto LABEL_38;
    }

    if (__OFADD__(v36, v131))
    {
      goto LABEL_142;
    }

    if (v36 + v131 >= v62)
    {
      v63 = v142[1];
    }

    else
    {
      v63 = v36 + v131;
    }

    if (v63 < v36)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v46 == v63)
    {
      goto LABEL_37;
    }

    v133 = v34;
    v138 = v5;
    v148 = *v142;
    v111 = (v148 + 8 * v46 - 8);
    v132 = v36;
    v112 = v36 - v46;
    v135 = v63;
LABEL_91:
    v144 = v46;
    a3 = *(v148 + 8 * v46);
    v136 = v112;
    v139 = v111;
LABEL_92:
    v113 = *v111;
    v114 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    swift_beginAccess();
    sub_1001C2E78(a3 + v114, v35);
    v115 = *v33;
    if ((*v33)(v35, 1, v20) == 1)
    {

      Date.init()();
      if (v115(v35, 1, v20) != 1)
      {
        sub_1001AC99C(v35, &qword_100375738, &qword_1002EF900);
      }
    }

    else
    {
      (*v150)(v152, v35, v20);
    }

    v116 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    swift_beginAccess();
    v117 = v113 + v116;
    v118 = v147;
    sub_1001C2E78(v117, v147);
    if (v115(v118, 1, v20) == 1)
    {
      v119 = v146;
      Date.init()();
      if (v115(v118, 1, v20) != 1)
      {
        sub_1001AC99C(v118, &qword_100375738, &qword_1002EF900);
      }
    }

    else
    {
      v119 = v146;
      (*v150)(v146, v118, v20);
    }

    a4 = v152;
    v120 = static Date.> infix(_:_:)();
    v121 = v119;
    v122 = v120;
    v123 = *v149;
    (*v149)(v121, v20);
    v123(a4, v20);

    if (v122)
    {
      break;
    }

    v35 = v151;
    v33 = v145;
LABEL_90:
    v46 = v144 + 1;
    v111 = v139 + 1;
    v112 = v136 - 1;
    v64 = v135;
    if (v144 + 1 != v135)
    {
      goto LABEL_91;
    }

    v5 = v138;
    v34 = v133;
    v36 = v132;
    if (v135 < v132)
    {
      goto LABEL_140;
    }

LABEL_38:
    v65 = v34;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v34 = v65;
    }

    else
    {
      result = sub_1001FA578(0, *(v65 + 2) + 1, 1, v65);
      v34 = result;
    }

    a4 = *(v34 + 2);
    v66 = *(v34 + 3);
    a3 = a4 + 1;
    if (a4 >= v66 >> 1)
    {
      result = sub_1001FA578((v66 > 1), a4 + 1, 1, v34);
      v34 = result;
    }

    *(v34 + 2) = a3;
    v67 = &v34[16 * a4];
    *(v67 + 4) = v36;
    *(v67 + 5) = v64;
    v68 = *v134;
    if (!*v134)
    {
      goto LABEL_150;
    }

    v135 = v64;
    if (a4)
    {
      while (2)
      {
        v69 = a3 - 1;
        if (a3 >= 4)
        {
          v74 = &v34[16 * a3 + 32];
          v75 = *(v74 - 64);
          v76 = *(v74 - 56);
          v80 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          if (v80)
          {
            goto LABEL_127;
          }

          v79 = *(v74 - 48);
          v78 = *(v74 - 40);
          v80 = __OFSUB__(v78, v79);
          v72 = v78 - v79;
          v73 = v80;
          if (v80)
          {
            goto LABEL_128;
          }

          v81 = &v34[16 * a3];
          v83 = *v81;
          v82 = *(v81 + 1);
          v80 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v80)
          {
            goto LABEL_130;
          }

          v80 = __OFADD__(v72, v84);
          v85 = v72 + v84;
          if (v80)
          {
            goto LABEL_133;
          }

          if (v85 >= v77)
          {
            v103 = &v34[16 * v69 + 32];
            v105 = *v103;
            v104 = *(v103 + 1);
            v80 = __OFSUB__(v104, v105);
            v106 = v104 - v105;
            if (v80)
            {
              goto LABEL_137;
            }

            if (v72 < v106)
            {
              v69 = a3 - 2;
            }
          }

          else
          {
LABEL_57:
            if (v73)
            {
              goto LABEL_129;
            }

            v86 = &v34[16 * a3];
            v88 = *v86;
            v87 = *(v86 + 1);
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_132;
            }

            v92 = &v34[16 * v69 + 32];
            v94 = *v92;
            v93 = *(v92 + 1);
            v80 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v80)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v90, v95))
            {
              goto LABEL_136;
            }

            if (v90 + v95 < v72)
            {
              goto LABEL_71;
            }

            if (v72 < v95)
            {
              v69 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v70 = *(v34 + 4);
            v71 = *(v34 + 5);
            v80 = __OFSUB__(v71, v70);
            v72 = v71 - v70;
            v73 = v80;
            goto LABEL_57;
          }

          v96 = &v34[16 * a3];
          v98 = *v96;
          v97 = *(v96 + 1);
          v80 = __OFSUB__(v97, v98);
          v90 = v97 - v98;
          v91 = v80;
LABEL_71:
          if (v91)
          {
            goto LABEL_131;
          }

          v99 = &v34[16 * v69];
          v101 = *(v99 + 4);
          v100 = *(v99 + 5);
          v80 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v80)
          {
            goto LABEL_134;
          }

          if (v102 < v90)
          {
            break;
          }
        }

        a4 = v69 - 1;
        if (v69 - 1 >= a3)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v142)
        {
          goto LABEL_147;
        }

        v107 = v34;
        a3 = *&v34[16 * a4 + 32];
        v108 = *&v34[16 * v69 + 40];
        sub_100219620((*v142 + 8 * a3), (*v142 + 8 * *&v34[16 * v69 + 32]), (*v142 + 8 * v108), v68);
        if (v5)
        {
        }

        if (v108 < a3)
        {
          goto LABEL_125;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v109 = v107;
        }

        else
        {
          v109 = sub_1001FA564(v107);
        }

        v35 = v151;
        if (a4 >= *(v109 + 2))
        {
          goto LABEL_126;
        }

        v110 = &v109[16 * a4];
        *(v110 + 4) = a3;
        *(v110 + 5) = v108;
        v155 = v109;
        a4 = &v155;
        result = sub_1001FA4D8(v69);
        v34 = v155;
        a3 = *(v155 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v31 = v142[1];
    v32 = v135;
    if (v135 >= v31)
    {
      goto LABEL_110;
    }
  }

  v35 = v151;
  if (v148)
  {
    v124 = *v111;
    a3 = v111[1];
    *v111 = a3;
    v111[1] = v124;
    --v111;
    v125 = __CFADD__(v112++, 1);
    v33 = v145;
    if (v125)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}