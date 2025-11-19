Swift::Int sub_100A12C04()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Hasher.init(_seed:)();
  sub_10003CAC4(v1, v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10003DF68(v10, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100F8D588();
      v12 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v13 = v7;
    }

    else
    {
      sub_10003DF68(v10, v4, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_100A178C8(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v12 = _s5BoardVMa;
      v13 = v4;
    }

    sub_10000BA44(v13, v12);
  }

  else
  {
    Hasher._combine(_:)(*v10);
  }

  v14 = _s4NodeVMa(0);
  sub_100E90344(v17, *(v1 + *(v14 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_100A12EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100F888B0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10066F2C0(v7, v8);
}

Swift::Int sub_100A12F14(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = _s5BoardVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Hasher.init(_seed:)();
  sub_10003CAC4(v4, v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10003DF68(v13, v10, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100F8D588();
      v15 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v16 = v10;
    }

    else
    {
      sub_10003DF68(v13, v7, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_100A178C8(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v15 = _s5BoardVMa;
      v16 = v7;
    }

    sub_10000BA44(v16, v15);
  }

  else
  {
    Hasher._combine(_:)(*v13);
  }

  sub_100E90344(v19, *(v4 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_100A13268(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  sub_10000BE14(a1, v18, &unk_1019F4D00);
  if (!v19)
  {
    sub_10000CAAC(v18, &unk_1019F4D00);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v15 = 0;
    return v15 & 1;
  }

  v9 = v17[1];
  sub_10003CAC4(v1 + OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_node, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10003CAC4(v9 + OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_node, v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v10 = sub_100F91CB8(v8, v5);
  sub_10000BA44(v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10000BA44(v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if ((v10 & 1) == 0)
  {

    goto LABEL_7;
  }

  v11 = [v1 children];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = [v9 children];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = sub_1006749A0(v12, v14);

  return v15 & 1;
}

uint64_t sub_100A13540()
{
  v1 = 1701080942;
  v2 = 0x6E6572646C696863;
  if (*v0 != 2)
  {
    v2 = 0x6661654C7369;
  }

  if (*v0)
  {
    v1 = 0x5064657070617277;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100A135BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100A17AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100A135E4(uint64_t a1)
{
  v2 = sub_100A17910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A13620(uint64_t a1)
{
  v2 = sub_100A17910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100A136D4(void *a1)
{
  v2 = v1;
  v16[1] = swift_getObjectType();
  v4 = _s4NodeVMa(0);
  __chkstk_darwin(v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A0CB10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  sub_100020E58(a1, a1[3]);
  sub_100A17910();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10003CAC4(v2 + OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_node, v6, _s4NodeVMa);
  LOBYTE(v18) = 0;
  sub_100A178C8(&qword_101A0CB18, _s4NodeVMa);
  v11 = v16[2];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10000BA44(v6, _s4NodeVMa);
  if (!v11)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = Strong;
    v17 = 1;
    sub_100A178C8(&qword_101A0CB20, type metadata accessor for CRLBoardLibraryViewModelWrappedNode);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v14 = [v2 children];
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v15;
    v17 = 2;
    sub_1005B981C(&qword_1019FFF30);
    sub_100A17964(&qword_101A0CB28, &qword_101A0CB20);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    [v2 isLeaf];
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

_BYTE *sub_100A13A9C(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = _s4NodeVMa(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_101A0CAE0);
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v15 - v9;
  v18 = OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_wrappedParent;
  swift_unknownObjectWeakInit();
  v16 = a1;
  v17 = OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_children;
  *&v3[OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_children] = _swiftEmptyArrayStorage;
  sub_100020E58(a1, a1[3]);
  sub_100A17910();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100005070(v16);
    swift_unknownObjectWeakDestroy();

    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22) = 0;
    sub_100A178C8(&qword_101A0CAF0, _s4NodeVMa);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10003DF68(v7, &v3[OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_node], _s4NodeVMa);
    v21 = 1;
    sub_100A178C8(&unk_101A0CAF8, type metadata accessor for CRLBoardLibraryViewModelWrappedNode);
    v12 = ObjectType;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v17;
    v14 = v22;
    swift_unknownObjectWeakAssign();

    sub_1005B981C(&qword_1019FFF30);
    v21 = 2;
    sub_100A17964(&qword_101A0CB08, &unk_101A0CAF8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v3[v13] = v22;

    LOBYTE(v22) = 3;
    v3[OBJC_IVAR____TtC8Freeform35CRLBoardLibraryViewModelWrappedNode_isLeaf] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v20.receiver = v3;
    v20.super_class = v12;
    v3 = objc_msgSendSuper2(&v20, "init");
    (*(v8 + 8))(v10, v15);
    sub_100005070(v16);
  }

  return v3;
}

_BYTE *sub_100A13F40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_100A13A9C(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

Class sub_100A14110()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_1019F61D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C6B0;
  static UTType.data.getter();
  v5 = UTType.identifier.getter();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

uint64_t sub_100A14304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v5 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = _s4NodeVMa(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v42 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v37 - v13;
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v18 = __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  swift_beginAccess();
  v43 = a2;
  if (*(a2 + 16))
  {
    return (*(v9 + 56))(a3, 1, 1, v8);
  }

  v41 = v8;
  sub_10003CAC4(v40, v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10000BA44(v22, _s5BoardVMa);
    v8 = v41;
    return (*(v9 + 56))(a3, 1, 1, v8);
  }

  sub_10000BA44(v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v24 = v40;
  sub_10003CAC4(v40, v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v25 = _swiftEmptyArrayStorage;
  sub_10003CB2C(v20, _swiftEmptyArrayStorage, v16);
  v26 = v41;
  v27 = *(v41 + 20);
  v28 = *(v24 + v27);
  v29 = *(v28 + 16);
  if (v29)
  {
    v38 = v16;
    v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v31 = v28 + v30;
    v32 = v9;
    v33 = *(v9 + 72);
    v39 = v32;
    v40 = a3;
    v34 = (v32 + 48);
    do
    {
      sub_10003CAC4(v31, v14, _s4NodeVMa);
      sub_100A14304(v14, v43);
      sub_10000BA44(v14, _s4NodeVMa);
      if ((*v34)(v7, 1, v26) == 1)
      {
        sub_10000CAAC(v7, &unk_1019FB770);
      }

      else
      {
        sub_10003DF68(v7, v42, _s4NodeVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_10003DFD0(0, v25[2] + 1, 1, v25);
        }

        v36 = v25[2];
        v35 = v25[3];
        if (v36 >= v35 >> 1)
        {
          v25 = sub_10003DFD0(v35 > 1, v36 + 1, 1, v25);
        }

        v25[2] = v36 + 1;
        sub_10003DF68(v42, v25 + v30 + v36 * v33, _s4NodeVMa);
        v26 = v41;
      }

      v31 += v33;
      --v29;
    }

    while (v29);
    v27 = *(v26 + 20);
    v9 = v39;
    a3 = v40;
    v16 = v38;
  }

  *&v16[v27] = v25;
  sub_10003CAC4(v16, a3, _s4NodeVMa);
  (*(v9 + 56))(a3, 0, 1, v26);
  return sub_10000BA44(v16, _s4NodeVMa);
}

uint64_t sub_100A147B4(uint64_t a1, void *a2)
{
  v97 = a1;
  v3 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v3 - 8);
  v83 = &v74 - v4;
  v5 = _s5BoardVMa(0);
  v6 = __chkstk_darwin(v5 - 8);
  v81 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v80 = (&v74 - v8);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v9 - 8);
  v75 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_1005B981C(&qword_1019F3460);
  __chkstk_darwin(v79);
  v88 = &v74 - v11;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v13 = __chkstk_darwin(v12 - 8);
  v76 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v87 = &v74 - v16;
  __chkstk_darwin(v15);
  v86 = &v74 - v17;
  v92 = sub_1005B981C(&qword_101A000E0);
  __chkstk_darwin(v92);
  v19 = &v74 - v18;
  v20 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v21 = __chkstk_darwin(v20);
  v23 = (&v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __chkstk_darwin(v21);
  v26 = &v74 - v25;
  v27 = __chkstk_darwin(v24);
  v89 = &v74 - v28;
  __chkstk_darwin(v27);
  v100 = &v74 - v29;
  v98 = _s4NodeVMa(0);
  v93 = *(v98 - 8);
  v30 = __chkstk_darwin(v98);
  v77 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v30);
  v99 = &v74 - v33;
  v96 = a2;
  v34 = *a2;
  v91 = *(*a2 + 16);
  if (v91)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_56;
    }

    while (1)
    {
      v35 = 0;
      v82 = (v93 + 48);
      v36 = -1;
      v78 = v20;
      v84 = v26;
      v85 = v23;
      v90 = v34;
      while (v35 < v34[2])
      {
        v39 = *(v93 + 72);
        v40 = v34 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + v39 * v35;
        sub_100A147B4(v97, v40 + *(v98 + 20));
        *v96 = v34;
        if (v35 >= v34[2])
        {
          goto LABEL_53;
        }

        v94 = v39;
        v95 = v40;
        v41 = v20;
        v42 = v99;
        sub_10003CAC4(v40, v99, _s4NodeVMa);
        v26 = sub_1005B981C(&qword_1019F3480);
        v23 = *(v26 - 8);
        v43 = v19;
        v44 = v100;
        v23[7](v100, 1, 5, v26);
        swift_storeEnumTagMultiPayload();
        v45 = *(v92 + 48);
        v46 = v42;
        v20 = v41;
        sub_10003CAC4(v46, v43, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v47 = v44;
        v19 = v43;
        sub_10003CAC4(v47, v43 + v45, type metadata accessor for CRLBoardLibraryViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (!EnumCaseMultiPayload)
        {
          sub_10003CAC4(v43, v89, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_6;
          }

          v26 = *v89 ^ *(v43 + v45) ^ 1u;
LABEL_22:
          v34 = v90;
          goto LABEL_38;
        }

        if (EnumCaseMultiPayload != 1)
        {
          v23 = v85;
          sub_10003CAC4(v43, v85, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            v37 = _s5BoardVMa;
            v38 = v23;
            goto LABEL_5;
          }

          v61 = v23;
          v23 = v80;
          sub_10003DF68(v61, v80, _s5BoardVMa);
          v62 = v43 + v45;
          v63 = v81;
          sub_10003DF68(v62, v81, _s5BoardVMa);
          v26 = sub_1013030EC(v23, v63);
          sub_10000BA44(v63, _s5BoardVMa);
          sub_10000BA44(v23, _s5BoardVMa);
          goto LABEL_22;
        }

        v49 = v84;
        sub_10003CAC4(v43, v84, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v37 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
          v38 = v49;
LABEL_5:
          sub_10000BA44(v38, v37);
LABEL_6:
          sub_10000CAAC(v43, &qword_101A000E0);
          sub_10000BA44(v100, type metadata accessor for CRLBoardLibraryViewModel.Item);
          result = sub_10000BA44(v99, _s4NodeVMa);
          v34 = v90;
          goto LABEL_7;
        }

        v50 = v49;
        v51 = v86;
        sub_10003DF68(v50, v86, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v52 = v87;
        sub_10003DF68(v43 + v45, v87, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v53 = *(v79 + 48);
        v54 = v88;
        sub_10003CAC4(v51, v88, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_10003CAC4(v52, v54 + v53, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v56 = v23[6];
        v23 += 6;
        v55 = v56;
        v57 = (v56)(v54, 5, v26);
        if (v57 > 2)
        {
          if (v57 == 3)
          {
            v59 = v88;
            v67 = (v55)(v88 + v53, 5, v26);
            v20 = v78;
            v34 = v90;
            if (v67 != 3)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v64 = v57 == 4;
            v59 = v88;
            v20 = v78;
            v34 = v90;
            v65 = v88 + v53;
            if (v64)
            {
              if ((v55)(v65, 5, v26) != 4)
              {
                goto LABEL_36;
              }
            }

            else
            {
              v69 = (v55)(v65, 5, v26);
              if (v69 != 5)
              {
                goto LABEL_36;
              }
            }
          }
        }

        else
        {
          v58 = v76;
          if (!v57)
          {
            v59 = v88;
            sub_10003CAC4(v88, v76, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v66 = (v55)(v59 + v53, 5, v26);
            v20 = v78;
            if (!v66)
            {
              v23 = v75;
              sub_10003DF68(v59 + v53, v75, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              v26 = sub_100F92694(v58, v23);
              sub_10000BA44(v23, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              sub_10000BA44(v58, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              sub_10000BA44(v59, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v34 = v90;
              goto LABEL_37;
            }

            sub_10000BA44(v58, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v34 = v90;
LABEL_36:
            sub_10000CAAC(v59, &qword_1019F3460);
            v26 = 0;
            goto LABEL_37;
          }

          v20 = v78;
          if (v57 == 1)
          {
            v59 = v88;
            v60 = (v55)(v88 + v53, 5, v26);
            v34 = v90;
            if (v60 != 1)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v59 = v88;
            v68 = (v55)(v88 + v53, 5, v26);
            v34 = v90;
            if (v68 != 2)
            {
              goto LABEL_36;
            }
          }
        }

        sub_10000BA44(v59, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v26 = 1;
LABEL_37:
        sub_10000BA44(v87, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_10000BA44(v86, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_38:
        sub_10000BA44(v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000BA44(v100, type metadata accessor for CRLBoardLibraryViewModel.Item);
        result = sub_10000BA44(v99, _s4NodeVMa);
        if (v26)
        {
          v70 = v83;
          v26 = &unk_1019FB770;
          sub_10000BE14(v97, v83, &unk_1019FB770);
          if ((*v82)(v70, 1, v98) == 1)
          {
            sub_10000CAAC(v70, &unk_1019FB770);
            v71 = v34[2];
            if (v35 >= v71)
            {
              goto LABEL_54;
            }

            v26 = v95;
            result = sub_10000BA44(v95, _s4NodeVMa);
            if (v94 > 0 || v26 >= v26 + v94 + (v36 + v71) * v94)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v94)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            v34[2] = v71 - 1;
          }

          else
          {
            v72 = v70;
            v73 = v77;
            sub_10003DF68(v72, v77, _s4NodeVMa);
            if (v35 >= v34[2])
            {
              goto LABEL_55;
            }

            result = sub_1008319D4(v73, v95);
          }

          *v96 = v34;
        }

LABEL_7:
        --v36;
        ++v35;
        if (v91 + v36 == -1)
        {
          return result;
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
      v34 = sub_10113CE6C(v34);
    }
  }

  return result;
}

uint64_t sub_100A153A8(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CAC4(a1, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10003DF68(v9, v6, _s5BoardVMa);
    if (static UUID.== infix(_:_:)())
    {
      v10 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
      v11 = *&v6[v10];
      v12 = *&v6[v10 + 8];
      v13 = (a2 + v10);
      if (v11 == *v13 && v12 == v13[1])
      {
        v15 = 1;
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v15 = 0;
    }

    sub_10000BA44(v6, _s5BoardVMa);
  }

  else
  {
    sub_10000BA44(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v15 = 0;
  }

  return v15 & 1;
}

Swift::Int sub_100A1555C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s4NodeVMa(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(_s4NodeVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100A158E8(v8, v9, a1, v4);
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
    return sub_100A15688(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100A15688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = _s4NodeVMa(0);
  v9 = __chkstk_darwin(v35);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_10003CAC4(v23, v17, _s4NodeVMa);
      sub_10003CAC4(v20, v13, _s4NodeVMa);
      v24 = sub_100A110FC(v17, v13);
      sub_10000BA44(v13, _s4NodeVMa);
      result = sub_10000BA44(v17, _s4NodeVMa);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v33)
        {
          __break(1u);
          return result;
        }

        v25 = v34;
        sub_10003DF68(v23, v34, _s4NodeVMa);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10003DF68(v25, v20, _s4NodeVMa);
        v20 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100A158E8(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v126 = _s4NodeVMa(0);
  v9 = *(v126 - 8);
  v10 = __chkstk_darwin(v126);
  v123 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v125 = &v108 - v13;
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v113 = &v108 - v16;
  v17 = __chkstk_darwin(v15);
  v119 = &v108 - v18;
  v19 = __chkstk_darwin(v17);
  v20 = __chkstk_darwin(v19);
  v22 = &v108 - v21;
  result = __chkstk_darwin(v20);
  v27 = &v108 - v24;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_97:
    v5 = *v121;
    if (*v121)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_99;
    }

    goto LABEL_139;
  }

  v127 = v26;
  v124 = v25;
  v115 = a4;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v117 = &v108 - v24;
  v118 = v22;
  v122 = a3;
  v114 = v9;
  while (1)
  {
    if (v29 + 1 >= v28)
    {
      v37 = v29 + 1;
    }

    else
    {
      v129 = v28;
      v31 = *a3;
      v32 = *(v9 + 72);
      v5 = v31 + v32 * (v29 + 1);
      sub_10003CAC4(v5, v27, _s4NodeVMa);
      v130 = v31;
      sub_10003CAC4(v31 + v32 * v29, v22, _s4NodeVMa);
      LODWORD(v128) = sub_100A110FC(v27, v22);
      if (v6)
      {
        sub_10000BA44(v22, _s4NodeVMa);
        sub_10000BA44(v27, _s4NodeVMa);
      }

      sub_10000BA44(v22, _s4NodeVMa);
      result = sub_10000BA44(v27, _s4NodeVMa);
      v116 = v29;
      v33 = v29 + 2;
      v34 = v130 + v32 * (v29 + 2);
      v35 = v119;
      v36 = v32;
      v130 = v32;
      while (1)
      {
        v37 = v129;
        if (v129 == v33)
        {
          break;
        }

        v38 = v127;
        sub_10003CAC4(v34, v127, _s4NodeVMa);
        sub_10003CAC4(v5, v35, _s4NodeVMa);
        v39 = sub_100A110FC(v38, v35);
        sub_10000BA44(v35, _s4NodeVMa);
        result = sub_10000BA44(v38, _s4NodeVMa);
        ++v33;
        v36 = v130;
        v34 += v130;
        v5 += v130;
        if ((v128 ^ v39))
        {
          v37 = v33 - 1;
          break;
        }
      }

      v6 = 0;
      v9 = v114;
      v29 = v116;
      if ((v128 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v37 < v116)
      {
        goto LABEL_133;
      }

      if (v116 < v37)
      {
        v40 = v37;
        v41 = v36 * (v37 - 1);
        v42 = v40 * v36;
        v129 = v40;
        v43 = v116 * v36;
        do
        {
          if (v29 != --v40)
          {
            v44 = *v122;
            if (!*v122)
            {
              goto LABEL_137;
            }

            v5 = v44 + v43;
            sub_10003DF68(v44 + v43, v123, _s4NodeVMa);
            if (v43 < v41 || v5 >= v44 + v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v43 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10003DF68(v123, v44 + v41, _s4NodeVMa);
            v36 = v130;
          }

          ++v29;
          v41 -= v36;
          v42 -= v36;
          v43 += v36;
        }

        while (v29 < v40);
        v6 = 0;
        a3 = v122;
        v9 = v114;
        v29 = v116;
        v37 = v129;
      }

      else
      {
LABEL_24:
        a3 = v122;
      }
    }

    v45 = a3[1];
    if (v37 >= v45)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v37, v29))
    {
      goto LABEL_129;
    }

    if (v37 - v29 >= v115)
    {
      goto LABEL_36;
    }

    if (__OFADD__(v29, v115))
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v129 = v37;
    if (v29 + v115 >= v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = v29 + v115;
    }

    if (v46 < v29)
    {
      goto LABEL_132;
    }

    if (v129 == v46)
    {
      v37 = v129;
LABEL_36:
      if (v37 < v29)
      {
        goto LABEL_128;
      }

      goto LABEL_37;
    }

    v92 = v6;
    v93 = *a3;
    v94 = *(v9 + 72);
    v95 = *a3 + v94 * (v129 - 1);
    v128 = -v94;
    v116 = v29;
    v96 = v29 - v129;
    v130 = v93;
    v109 = v94;
    v5 = v93 + v129 * v94;
    v97 = v113;
    v120 = v46;
    do
    {
      v110 = v5;
      v111 = v96;
      v112 = v95;
      v98 = v95;
      do
      {
        sub_10003CAC4(v5, v97, _s4NodeVMa);
        v99 = v124;
        sub_10003CAC4(v98, v124, _s4NodeVMa);
        v100 = sub_100A110FC(v97, v99);
        if (v92)
        {
          sub_10000BA44(v99, _s4NodeVMa);
          sub_10000BA44(v97, _s4NodeVMa);
        }

        v101 = v100;
        sub_10000BA44(v99, _s4NodeVMa);
        result = sub_10000BA44(v97, _s4NodeVMa);
        if ((v101 & 1) == 0)
        {
          break;
        }

        if (!v130)
        {
          goto LABEL_135;
        }

        v102 = v125;
        sub_10003DF68(v5, v125, _s4NodeVMa);
        swift_arrayInitWithTakeFrontToBack();
        sub_10003DF68(v102, v98, _s4NodeVMa);
        v98 += v128;
        v5 += v128;
      }

      while (!__CFADD__(v96++, 1));
      v95 = v112 + v109;
      v96 = v111 - 1;
      v5 = v110 + v109;
      v37 = v120;
      ++v129;
    }

    while (v129 != v120);
    v6 = 0;
    a3 = v122;
    v9 = v114;
    v29 = v116;
    if (v120 < v116)
    {
      goto LABEL_128;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100B355CC(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v48 = *(v30 + 2);
    v47 = *(v30 + 3);
    v5 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_100B355CC((v47 > 1), v48 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v5;
    v49 = &v30[16 * v48];
    *(v49 + 4) = v29;
    *(v49 + 5) = v37;
    v50 = *v121;
    if (!*v121)
    {
      goto LABEL_138;
    }

    v120 = v37;
    if (v48)
    {
      break;
    }

LABEL_3:
    v28 = a3[1];
    v29 = v120;
    v27 = v117;
    v22 = v118;
    if (v120 >= v28)
    {
      goto LABEL_97;
    }
  }

  while (1)
  {
    v51 = v5 - 1;
    if (v5 >= 4)
    {
      v56 = &v30[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_115;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_116;
      }

      v63 = &v30[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_118;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_121;
      }

      if (v67 >= v59)
      {
        v85 = &v30[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_127;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v5 == 3)
    {
      v52 = *(v30 + 4);
      v53 = *(v30 + 5);
      v62 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      v55 = v62;
LABEL_56:
      if (v55)
      {
        goto LABEL_117;
      }

      v68 = &v30[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v71 = __OFSUB__(v69, v70);
      v72 = v69 - v70;
      v73 = v71;
      if (v71)
      {
        goto LABEL_120;
      }

      v74 = &v30[16 * v51 + 32];
      v76 = *v74;
      v75 = *(v74 + 1);
      v62 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v62)
      {
        goto LABEL_123;
      }

      if (__OFADD__(v72, v77))
      {
        goto LABEL_124;
      }

      if (v72 + v77 >= v54)
      {
        if (v54 < v77)
        {
          v51 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v78 = &v30[16 * v5];
    v80 = *v78;
    v79 = *(v78 + 1);
    v62 = __OFSUB__(v79, v80);
    v72 = v79 - v80;
    v73 = v62;
LABEL_70:
    if (v73)
    {
      goto LABEL_119;
    }

    v81 = &v30[16 * v51];
    v83 = *(v81 + 4);
    v82 = *(v81 + 5);
    v62 = __OFSUB__(v82, v83);
    v84 = v82 - v83;
    if (v62)
    {
      goto LABEL_122;
    }

    if (v84 < v72)
    {
      goto LABEL_3;
    }

LABEL_77:
    v89 = v51 - 1;
    if (v51 - 1 >= v5)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_134;
    }

    v5 = *&v30[16 * v89 + 32];
    v90 = *&v30[16 * v51 + 40];
    sub_100A16374(*a3 + *(v9 + 72) * v5, *a3 + *(v9 + 72) * *&v30[16 * v51 + 32], *a3 + *(v9 + 72) * v90, v50);
    if (v6)
    {
    }

    if (v90 < v5)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_10113DE48(v30);
    }

    if (v89 >= *(v30 + 2))
    {
      goto LABEL_114;
    }

    v91 = &v30[16 * v89];
    *(v91 + 4) = v5;
    *(v91 + 5) = v90;
    v131 = v30;
    result = sub_10113DDBC(v51);
    v30 = v131;
    v5 = *(v131 + 2);
    if (v5 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_10113DE48(v30);
  v30 = result;
LABEL_99:
  v131 = v30;
  v104 = *(v30 + 2);
  if (v104 < 2)
  {
  }

  v105 = v9;
  while (*a3)
  {
    v9 = *&v30[16 * v104];
    v106 = *&v30[16 * v104 + 24];
    sub_100A16374(*a3 + *(v105 + 72) * v9, *a3 + *(v105 + 72) * *&v30[16 * v104 + 16], *a3 + *(v105 + 72) * v106, v5);
    if (v6)
    {
    }

    if (v106 < v9)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_10113DE48(v30);
    }

    if (v104 - 2 >= *(v30 + 2))
    {
      goto LABEL_126;
    }

    v107 = &v30[16 * v104];
    *v107 = v9;
    *(v107 + 1) = v106;
    v131 = v30;
    result = sub_10113DDBC(v104 - 1);
    v30 = v131;
    v104 = *(v131 + 2);
    if (v104 <= 1)
    {
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_100A16374(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = _s4NodeVMa(0);
  v9 = __chkstk_darwin(v64);
  v10 = __chkstk_darwin(v9);
  v12 = &v53 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v53 - v14;
  result = __chkstk_darwin(v13);
  v19 = &v53 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          sub_10003CAC4(v39 + v38, v27, _s4NodeVMa);
          v43 = v27;
          v44 = v59;
          sub_10003CAC4(v40, v59, _s4NodeVMa);
          v45 = sub_100A110FC(v43, v44);
          if (v37)
          {
            sub_10000BA44(v44, _s4NodeVMa);
            sub_10000BA44(v43, _s4NodeVMa);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          sub_10000BA44(v44, _s4NodeVMa);
          sub_10000BA44(v43, _s4NodeVMa);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        sub_10003CAC4(a2, v19, _s4NodeVMa);
        sub_10003CAC4(a4, v15, _s4NodeVMa);
        v31 = sub_100A110FC(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        sub_10000BA44(v33, _s4NodeVMa);
        sub_10000BA44(v19, _s4NodeVMa);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_10000BA44(v15, _s4NodeVMa);
      sub_10000BA44(v19, _s4NodeVMa);
    }
  }

LABEL_62:
  sub_10063F7AC(&v67, &v66, &v65);
  return 1;
}

void *sub_100A169A4(uint64_t a1, uint64_t a2)
{
  v123 = a1;
  v126 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v129 = *(v126 - 8);
  v3 = __chkstk_darwin(v126);
  v107 = &v102[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v105 = &v102[-v6];
  v7 = __chkstk_darwin(v5);
  v104 = &v102[-v8];
  v9 = __chkstk_darwin(v7);
  v122 = &v102[-v10];
  v106 = v11;
  __chkstk_darwin(v9);
  v128 = &v102[-v12];
  v115 = _s4NodeVMa(0);
  v112 = *(v115 - 8);
  v13 = __chkstk_darwin(v115);
  v116 = &v102[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v110 = &v102[-v16];
  __chkstk_darwin(v15);
  v120 = &v102[-v17];
  v18 = sub_1005B981C(&qword_1019F33E0);
  v19 = __chkstk_darwin(v18 - 8);
  v113 = &v102[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v119 = &v102[-v21];
  v118 = type metadata accessor for CRLFolderIdentifier(0);
  v22 = *(v118 - 8);
  v23 = __chkstk_darwin(v118);
  v108 = &v102[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v23);
  v111 = &v102[-v26];
  __chkstk_darwin(v25);
  v121 = &v102[-v27];
  v28 = _s5BoardVMa(0);
  v127 = *(v28 - 8);
  v29 = __chkstk_darwin(v28);
  v114 = &v102[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v29);
  v109 = &v102[-v32];
  v33 = __chkstk_darwin(v31);
  v35 = &v102[-v34];
  __chkstk_darwin(v33);
  v37 = &v102[-v36];
  v125 = swift_allocObject();
  *(v125 + 16) = &_swiftEmptyDictionarySingleton;
  v38 = *(a2 + 56);
  v131[1] = _swiftEmptySetSingleton;
  v39 = 1 << *(a2 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v38;
  v42 = (v39 + 63) >> 6;
  v117 = (v22 + 48);

  v124 = 0;
  v43 = 0;
LABEL_4:
  v44 = v43;
  v45 = v127;
  if (!v41)
  {
    goto LABEL_6;
  }

  do
  {
    v43 = v44;
LABEL_9:
    v46 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    sub_10003CAC4(*(a2 + 48) + *(v45 + 9) * (v46 | (v43 << 6)), v37, _s5BoardVMa);
    sub_10003DF68(v37, v35, _s5BoardVMa);
    if ((v35[*(v28 + 68)] & 1) == 0)
    {
      v47 = v119;
      sub_10000BE14(&v35[*(v28 + 20)], v119, &qword_1019F33E0);
      if ((*v117)(v47, 1, v118) == 1)
      {
        sub_10000CAAC(v47, &qword_1019F33E0);
        v48 = v110;
        sub_10003CAC4(v35, v110, _s5BoardVMa);
        type metadata accessor for CRLBoardLibraryViewModel.Item(0);
        swift_storeEnumTagMultiPayload();
        *(v48 + *(v115 + 20)) = _swiftEmptyArrayStorage;
        sub_100E6F61C(v120, v48);
        sub_10000BA44(v120, _s4NodeVMa);
      }

      else
      {
        v49 = v121;
        sub_10003DF68(v47, v121, type metadata accessor for CRLFolderIdentifier);
        sub_10003CAC4(v35, v114, _s5BoardVMa);
        sub_1000C1014(v124);
        v50 = *(v125 + 16);
        LODWORD(v124) = swift_isUniquelyReferenced_nonNull_native();
        v131[0] = v50;
        v52 = sub_1007C88C4(v49);
        v53 = v50[2];
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          goto LABEL_53;
        }

        if (v50[3] >= v55)
        {
          if ((v124 & 1) == 0)
          {
            v103 = v51;
            sub_100AA5F60();
            LOBYTE(v51) = v103;
            v50 = v131[0];
          }
        }

        else
        {
          v103 = v51;
          sub_100A8C868(v55, v124);
          v50 = v131[0];
          v56 = sub_1007C88C4(v121);
          v57 = v51 & 1;
          LOBYTE(v51) = v103;
          if ((v103 & 1) != v57)
          {
            goto LABEL_55;
          }

          v52 = v56;
        }

        *(v125 + 16) = v50;
        if ((v51 & 1) == 0)
        {
          sub_10003CAC4(v121, v111, type metadata accessor for CRLFolderIdentifier);
          sub_100AB0358(v52, v111, _swiftEmptySetSingleton, v50);
        }

        v58 = v109;
        sub_100E703AC(v109, v114);
        sub_10000BA44(v58, _s5BoardVMa);
        sub_10000BA44(v121, type metadata accessor for CRLFolderIdentifier);
        v124 = sub_100A105FC;
      }

      sub_10000BA44(v35, _s5BoardVMa);
      goto LABEL_4;
    }

    sub_10000BA44(v35, _s5BoardVMa);
    v44 = v43;
  }

  while (v41);
  while (1)
  {
LABEL_6:
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v43 >= v42)
    {
      break;
    }

    v41 = *(a2 + 56 + 8 * v43);
    ++v44;
    if (v41)
    {
      goto LABEL_9;
    }
  }

  v59 = _swiftEmptyArrayStorage;
  v131[0] = _swiftEmptyArrayStorage;
  v60 = swift_allocObject();
  *(v60 + 16) = &_swiftEmptyDictionarySingleton;
  v61 = v123;
  v62 = v123 + 56;
  v63 = 1 << *(v123 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v123 + 56);
  v66 = (v63 + 63) >> 6;

  v119 = 0;
  v120 = 0;
  v127 = 0;
  v121 = 0;
  v67 = 0;
  v68 = v126;
  v69 = v122;
  while (1)
  {
    v70 = v67;
    if (!v65)
    {
      break;
    }

LABEL_31:
    v71 = __clz(__rbit64(v65));
    v65 &= v65 - 1;
    v72 = v128;
    sub_10003CAC4(*(v61 + 48) + *(v129 + 72) * (v71 | (v67 << 6)), v128, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_10003DF68(v72, v69, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    if (*(v69 + *(v68 + 48)))
    {
      sub_10000BA44(v69, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    else
    {
      v114 = v59;
      v73 = v113;
      sub_10000BE14(v69 + *(v68 + 20), v113, &qword_1019F33E0);
      if ((*v117)(v73, 1, v118) == 1)
      {
        sub_10000CAAC(v73, &qword_1019F33E0);
        v74 = v116;
        sub_10003CAC4(v69, v116, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v75 = sub_1005B981C(&qword_1019F3480);
        (*(*(v75 - 8) + 56))(v74, 0, 5, v75);
        type metadata accessor for CRLBoardLibraryViewModel.Item(0);
        swift_storeEnumTagMultiPayload();
        v59 = v114;
        *&v74[*(v115 + 20)] = _swiftEmptyArrayStorage;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_10003DFD0(0, v59[2] + 1, 1, v59);
        }

        v77 = v59[2];
        v76 = v59[3];
        if (v77 >= v76 >> 1)
        {
          v59 = sub_10003DFD0(v76 > 1, v77 + 1, 1, v59);
        }

        sub_10000BA44(v69, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v59[2] = v77 + 1;
        sub_10003DF68(v116, v59 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v77, _s4NodeVMa);
        v131[0] = v59;
        v68 = v126;
      }

      else
      {
        sub_10003DF68(v73, v108, type metadata accessor for CRLFolderIdentifier);
        v110 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
        v78 = v105;
        sub_10003CAC4(v69, v105, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v79 = (*(v129 + 80) + 16) & ~*(v129 + 80);
        v80 = swift_allocObject();
        sub_10003DF68(v78, &v80[v79], type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_1000C1014(v120);
        sub_10003CAC4(v69, v107, v110);
        v81 = swift_allocObject();
        *(v81 + 16) = sub_100A17838;
        *(v81 + 24) = v80;
        v119 = v80;
        v110 = v81;
        sub_1000C1014(v127);
        v82 = *(v60 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v130 = v82;
        v85 = sub_1007C88C4(v108);
        v86 = *(v82 + 16);
        v87 = (v84 & 1) == 0;
        v88 = v86 + v87;
        if (__OFADD__(v86, v87))
        {
          goto LABEL_54;
        }

        v89 = isUniquelyReferenced_nonNull_native;
        if (*(v82 + 24) >= v88)
        {
          v68 = v126;
          if (v89)
          {
            *(v60 + 16) = v82;
            if (v84)
            {
              goto LABEL_47;
            }

LABEL_46:
            v96 = *(v110 + 2);
            v127 = v85;
            v121 = v96();
            v97 = v111;
            sub_10003CAC4(v108, v111, type metadata accessor for CRLFolderIdentifier);
            sub_100AB0358(v127, v97, v121, v82);
            goto LABEL_47;
          }

          v127 = v85;
          v99 = v84;
          sub_100AA5CE4();
          v100 = v99;
          v85 = v127;
          v82 = v130;
          *(v60 + 16) = v130;
          if ((v100 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v90 = v84;
          sub_100A8C854(v88, v89);
          v82 = v130;
          v91 = sub_1007C88C4(v108);
          v93 = v92 & 1;
          v94 = v90;
          v95 = v90 & 1;
          v68 = v126;
          if (v95 != v93)
          {
            goto LABEL_55;
          }

          v85 = v91;
          *(v60 + 16) = v82;
          if ((v94 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

LABEL_47:
        v98 = v104;
        sub_100E6F3DC(v104, v107);
        sub_10000BA44(v98, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10000BA44(v108, type metadata accessor for CRLFolderIdentifier);
        sub_10000BA44(v69, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v127 = sub_100A17898;
        v120 = sub_100A17838;
        v121 = v110;
        v59 = v114;
      }
    }
  }

  while (1)
  {
    v67 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v67 >= v66)
    {

      sub_100A10724(v131, v60, v125);

      sub_1000C1014(v124);
      sub_1000C1014(v120);
      sub_1000C1014(v127);
      return v131[0];
    }

    v65 = *(v62 + 8 * v67);
    ++v70;
    if (v65)
    {
      goto LABEL_31;
    }
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100A17838()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Folder(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100A1060C(v2);
}

uint64_t sub_100A17898@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_100A178C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100A17910()
{
  result = qword_101A0CAE8;
  if (!qword_101A0CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CAE8);
  }

  return result;
}

uint64_t sub_100A17964(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_1019FFF30);
    sub_100A178C8(a2, type metadata accessor for CRLBoardLibraryViewModelWrappedNode);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100A17A00()
{
  result = qword_101A0CB38;
  if (!qword_101A0CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CB38);
  }

  return result;
}

uint64_t sub_100A17A54(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&unk_101A23CC0);
    sub_100A178C8(a2, _s4NodeVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100A17AF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080942 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5064657070617277 && a2 == 0xED0000746E657261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6661654C7369 && a2 == 0xE600000000000000)
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

id sub_100A17C58(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() progressWithTotalUnitCount:100];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for CRLBoardLibraryViewModelWrappedNode(0);
  sub_100A178C8(&qword_101A0CB20, type metadata accessor for CRLBoardLibraryViewModelWrappedNode);
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v5;

  [v3 setCompletedUnitCount:100];
  sub_100024E98(v4, v6);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa, 0);

  sub_10002640C(v4, v6);
  sub_10002640C(v4, v6);
  return v3;
}

unint64_t sub_100A17E1C()
{
  result = qword_101A0CB78;
  if (!qword_101A0CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CB78);
  }

  return result;
}

unint64_t sub_100A17E74()
{
  result = qword_101A0CB80;
  if (!qword_101A0CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CB80);
  }

  return result;
}

unint64_t sub_100A17ECC()
{
  result = qword_101A0CB88;
  if (!qword_101A0CB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CB88);
  }

  return result;
}

unint64_t sub_100A17F24()
{
  result = qword_101A0CB90;
  if (!qword_101A0CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CB90);
  }

  return result;
}

unint64_t sub_100A17F7C()
{
  result = qword_101A0CB98;
  if (!qword_101A0CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CB98);
  }

  return result;
}

unint64_t sub_100A17FD4()
{
  result = qword_101A0CBA0;
  if (!qword_101A0CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBA0);
  }

  return result;
}

uint64_t sub_100A18030(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100A18054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100A18068(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100A18080(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_100A180CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 240);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100A18114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
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
      *(result + 240) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100A181A0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7974537473696C5FLL;
    v7 = 0x6174537473696C5FLL;
    if (a1 != 10)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x746361726168635FLL;
    v9 = 0xD000000000000015;
    if (a1 == 7)
    {
      v9 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D614E746E6F665FLL;
    v2 = 0x63696C6174695FLL;
    v3 = 0x696C7265646E755FLL;
    if (a1 != 4)
    {
      v3 = 0x74656B697274735FLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x7A6953746E6F665FLL;
    if (a1 != 1)
    {
      v4 = 0x646C6F625FLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int sub_100A18374()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10148EBE8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100A183FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10148EBE8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100A18448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100A1C5E4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100A18494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100A1C608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100A184D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100A1C5E4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100A1850C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A1ADCC();
  v5 = sub_100A1AE24();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100A18564(uint64_t a1)
{
  v2 = sub_100A1AE24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A185A0(uint64_t a1)
{
  v2 = sub_100A1AE24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100A185DC(uint64_t a1, char *a2)
{
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 characterCount];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v15 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v15)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v16 = result;
  (*(*v15 + 896))();
  sub_1005E0A78(&v10[*(v8 + 20)], v13);
  sub_1005E0ADC(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v5 + 16))(v7, v13, v4);
  sub_1005E0ADC(v13, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.count.getter();
  v18 = (*(v5 + 8))(v7, v4);
  v19 = (v17 & (v17 >> 63));
  if (v17 >= v16)
  {
    v17 = v16;
  }

  __chkstk_darwin(v18);
  *(&v37 - 4) = &type metadata for CRLWPFontNameAttribute;
  *(&v37 - 3) = sub_100962324();
  *(&v37 - 2) = a1;
  KeyPath = swift_getKeyPath();
  v21 = a2;

  v22 = sub_10095DAD4(KeyPath, v21, v19, v17);
  v24 = v23;
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    return sub_100CB23B4(v22, v24);
  }

  sub_1005B981C(&qword_101A0CC20);
  v44 = a1;
  v43 = swift_getKeyPath();
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v27 & 1) == 0)
  {
    sub_100962378();
    return 0;
  }

  v28 = v22[2];
  if (!v28)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v30 = v22 + 5;
  v29 = v22[5];
  v41 = v22[4];
  v42 = v29;
  v39 = 0x8000000101552060;
  v40 = 0x8000000101552030;
  v38 = 0x8000000101552090;
  do
  {
    v32 = *(v30 - 1);
    v31 = *v30;
    v33 = v32 == 0xD000000000000029 && 0x8000000101551FA0 == v31;
    if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v34 = v32 == 0xD000000000000023 && 0x8000000101551FD0 == v31;
      if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v32 != 0xD000000000000024 || 0x8000000101552000 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v32 != 0xD000000000000026 || v40 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v32 != 0xD000000000000025 || v39 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v32 != 0xD000000000000027 || v38 != v31))
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    v30 += 2;
    --v28;
  }

  while (v28);
  v35 = v42;

  v36 = sub_100CB23B4(v41, v35);
  sub_100962378();
  return v36;
}

unint64_t sub_100A18B3C(uint64_t a1, char *a2)
{
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 characterCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v15)
  {
    v16 = result;
    (*(*v15 + 896))();
    sub_1005E0A78(&v10[*(v8 + 20)], v13);
    sub_1005E0ADC(v10, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v5 + 16))(v7, v13, v4);
    sub_1005E0ADC(v13, type metadata accessor for CRLWPStorageCRDTData);
    v17 = CRAttributedString.count.getter();
    v18 = (*(v5 + 8))(v7, v4);
    v19 = (v17 & (v17 >> 63));
    if (v17 >= v16)
    {
      v17 = v16;
    }

    __chkstk_darwin(v18);
    *(&v28 - 4) = &type metadata for CRLWPFontSizeAttribute;
    *(&v28 - 3) = sub_10082465C();
    *(&v28 - 2) = a1;
    KeyPath = swift_getKeyPath();
    v21 = a2;

    v22 = sub_10095CB84(KeyPath, v21, v19, v17);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      v27 = 0;
      goto LABEL_11;
    }

    sub_1005B981C(&qword_101A0CC20);
    v29 = a1;
    v28 = swift_getKeyPath();
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v25 & 1) == 0)
    {
      v27 = 1;
      sub_1000C1080(v22, 1);
      LODWORD(v22) = 0;
      goto LABEL_11;
    }

    if (*(v22 + 16))
    {
      v26 = *(v22 + 32);
      sub_1000C1080(v22, 1);
      v27 = 0;
      LODWORD(v22) = v26;
LABEL_11:
      LOBYTE(v29) = v27;
      return v22 | (v27 << 32);
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100A18ED0(uint64_t a1, char *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, char *, uint64_t, uint64_t))
{
  v35 = a3;
  v36 = a4;
  v8 = sub_1005B981C(&unk_1019FFD10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 characterCount];
  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v34 = a5;
  v19 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v20 = result;
  (*(*v19 + 896))();
  sub_1005E0A78(&v14[*(v12 + 20)], v17);
  sub_1005E0ADC(v14, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v9 + 16))(v11, v17, v8);
  sub_1005E0ADC(v17, type metadata accessor for CRLWPStorageCRDTData);
  v21 = CRAttributedString.count.getter();
  v22 = (*(v9 + 8))(v11, v8);
  v23 = v21 & (v21 >> 63);
  if (v21 >= v20)
  {
    v21 = v20;
  }

  v24 = __chkstk_darwin(v22);
  v25 = v36;
  *(&v33 - 4) = v35;
  *(&v33 - 3) = v25(v24);
  *(&v33 - 2) = a1;
  KeyPath = swift_getKeyPath();
  v27 = a2;

  v28 = v34(KeyPath, v27, v23, v21);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    return v28 & 1;
  }

  sub_1005B981C(&qword_101A0CC20);
  v38 = a1;
  v37 = swift_getKeyPath();
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v31)
  {
    if (*(v28 + 16))
    {
      v32 = *(v28 + 32);
      sub_1000C1080(v28, 1);
      return v32;
    }

    goto LABEL_13;
  }

  sub_1000C1080(v28, 1);
  return 2;
}

uint64_t sub_100A19260(void (*a1)(uint64_t, uint64_t), char *a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, char *, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v36 = a4;
  v37 = a5;
  v35 = a3;
  v9 = sub_1005B981C(&unk_1019FFD10);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 characterCount];
  if (result < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v34 = a6;
  v20 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v20)
  {
    v21 = result;
    (*(*v20 + 896))();
    sub_1005E0A78(&v15[*(v13 + 20)], v18);
    sub_1005E0ADC(v15, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v10 + 16))(v12, v18, v9);
    sub_1005E0ADC(v18, type metadata accessor for CRLWPStorageCRDTData);
    v22 = CRAttributedString.count.getter();
    v23 = (*(v10 + 8))(v12, v9);
    v24 = v22 & (v22 >> 63);
    if (v22 >= v21)
    {
      v22 = v21;
    }

    v25 = __chkstk_darwin(v23);
    v26 = v36;
    *(&v34 - 4) = v35;
    *(&v34 - 3) = v26(v25);
    *(&v34 - 2) = a1;
    KeyPath = swift_getKeyPath();
    v28 = a2;

    v29 = v37(KeyPath, v28, v24, v22);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      return v29;
    }

    sub_1005B981C(&qword_101A0CC20);
    v39 = a1;
    v38 = swift_getKeyPath();
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v32 & 1) == 0)
    {
      v33 = 0;
      goto LABEL_11;
    }

    if (*(v29 + 16))
    {
      v33 = *(v29 + 32);
LABEL_11:
      v34(v29, 1);
      return v33;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100A19600(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v39 = a1;
  v6 = sub_1005B981C(&unk_1019FFD10);
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 characterCount];
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v17 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v17)
  {
    v18 = v16;
    (*(*v17 + 896))();
    sub_1005E0A78(&v12[*(v10 + 20)], v15);
    sub_1005E0ADC(v12, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v7 + 16))(v9, v15, v6);
    sub_1005E0ADC(v15, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.count.getter();
    v20 = (*(v7 + 8))(v9, v6);
    v6 = (v19 & (v19 >> 63));
    if (v19 >= v18)
    {
      v19 = v18;
    }

    __chkstk_darwin(v20);
    *(&v39 - 4) = &type metadata for CRLWPCharacterFillAttribute;
    v21 = sub_10082489C();
    v22 = v39;
    *(&v39 - 3) = v21;
    *(&v39 - 2) = v22;
    KeyPath = swift_getKeyPath();
    v24 = a2;

    a2 = sub_100957838(KeyPath, v24, v6, v19);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      sub_101247234(a2, v41);
      v33 = v41[5];
      a3[4] = v41[4];
      a3[5] = v33;
      a3[6] = v41[6];
      v34 = v41[1];
      *a3 = v41[0];
      a3[1] = v34;
      v35 = v41[3];
      v36 = v41[2];
LABEL_22:
      a3[2] = v36;
      a3[3] = v35;
      return;
    }

    sub_1005B981C(&qword_101A0CC20);
    *&v41[0] = v22;
    v7 = swift_getKeyPath();
    *&v40[0] = v7;
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v27 & 1) == 0)
    {
      sub_1000C10AC(a2, 1);
      a3[5] = 0u;
      a3[6] = 0u;
      a3[3] = 0u;
      a3[4] = 0u;
      a3[1] = 0u;
      a3[2] = 0u;
      *a3 = 0u;
      return;
    }

    v3 = a2 >> 62;
    if (!(a2 >> 62))
    {
      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_24:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_9:
      v6 = (a2 & 0xC000000000000001);
      if ((a2 & 0xC000000000000001) == 0)
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v28 = *(a2 + 32);
        v29 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
LABEL_12:
          while (v29 < 1)
          {
LABEL_30:
            __break(1u);
LABEL_31:
            v29 = _CocoaArrayWrapper.endIndex.getter();
            v28 = v7;
            if (!v29)
            {
              goto LABEL_21;
            }
          }

          v30 = v28;

          for (i = 0; i != v29; ++i)
          {
            if (v6)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v32 = *(a2 + 8 * i + 32);
            }

            sub_101247234(v32, v41);
            sub_1007A97CC(v41);
          }

          sub_1000C10AC(a2, 1);
          v28 = v30;
        }

        goto LABEL_21;
      }

LABEL_26:

      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      sub_1000C10AC(a2, 1);
      if (v3)
      {
        goto LABEL_31;
      }

      v28 = v7;
      v29 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_12;
      }

LABEL_21:
      sub_101247234(v28, v40);
      sub_1000C10AC(a2, 1);
      v37 = v40[5];
      a3[4] = v40[4];
      a3[5] = v37;
      a3[6] = v40[6];
      v38 = v40[1];
      *a3 = v40[0];
      a3[1] = v38;
      v35 = v40[3];
      v36 = v40[2];
      goto LABEL_22;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_100A19B18(uint64_t a1, char *a2)
{
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 characterCount];
  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v16 = result;
  (*(*v15 + 896))();
  sub_1005E0A78(&v10[*(v8 + 20)], v13);
  sub_1005E0ADC(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v5 + 16))(v7, v13, v4);
  sub_1005E0ADC(v13, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.count.getter();
  v18 = (*(v5 + 8))(v7, v4);
  v19 = (v17 & (v17 >> 63));
  if (v17 >= v16)
  {
    v17 = v16;
  }

  __chkstk_darwin(v18);
  v27[-4] = &type metadata for CRLWPListStyleTypeAttribute;
  v27[-3] = sub_100962180();
  v27[-2] = a1;
  KeyPath = swift_getKeyPath();
  v21 = a2;

  v22 = sub_100954FAC(KeyPath, v21, v19, v17);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    return v22;
  }

  sub_1005B981C(&qword_101A0CC20);
  v27[1] = a1;
  v27[0] = swift_getKeyPath();
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v25)
  {
    if (*(v22 + 16))
    {
      v26 = *(v22 + 32);
      sub_1000C1080(v22, 1);
      return v26;
    }

    goto LABEL_13;
  }

  sub_1000C1080(v22, 1);
  return 0;
}

uint64_t sub_100A19EA0(uint64_t a1, char *a2)
{
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v31 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 characterCount];
  if (result < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v15)
  {
    v16 = result;
    (*(*v15 + 896))();
    sub_1005E0A78(&v10[*(v8 + 20)], v13);
    sub_1005E0ADC(v10, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v5 + 16))(v7, v13, v4);
    sub_1005E0ADC(v13, type metadata accessor for CRLWPStorageCRDTData);
    v17 = CRAttributedString.count.getter();
    v18 = (*(v5 + 8))(v7, v4);
    v19 = (v17 & (v17 >> 63));
    if (v17 >= v16)
    {
      v17 = v16;
    }

    __chkstk_darwin(v18);
    v31[-4] = &type metadata for CRLWPListStartAttribute;
    v31[-3] = sub_1009620D8();
    v31[-2] = a1;
    KeyPath = swift_getKeyPath();
    v21 = a2;

    v22 = sub_1009543F8(KeyPath, v21, v19, v17);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      return v22;
    }

    sub_1005B981C(&qword_101A0CC20);
    v31[1] = a1;
    v31[0] = swift_getKeyPath();
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v25 & 1) == 0)
    {
      v28 = 0;
LABEL_15:
      sub_1000C1080(v22, 1);
      return v28;
    }

    v26 = *(v22 + 16);
    if (v26)
    {
      v27 = (v22 + 32);
      v28 = *(v22 + 32);
      while (1)
      {
        v30 = *v27++;
        v29 = v30;
        if (v30 > 1)
        {
          break;
        }

        if (!--v26)
        {
          goto LABEL_15;
        }
      }

      v28 = v29;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100A1A240(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0CC68);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100A1AE24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = *v3;
  LOBYTE(v25) = *(v3 + 16);
  LOBYTE(v22[0]) = 0;
  sub_1005B981C(&qword_1019FFFC8);
  sub_100A1D5E4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 24);
    LOBYTE(v24) = 1;
    LOBYTE(v22[0]) = v9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v24) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v24) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v24 = *(v3 + 4);
    BYTE8(v24) = *(v3 + 40);
    LOBYTE(v22[0]) = 4;
    sub_1005B981C(&unk_1019FFFB0);
    sub_100A1D668();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v24 = *(v3 + 6);
    BYTE8(v24) = *(v3 + 56);
    LOBYTE(v22[0]) = 5;
    sub_1005B981C(&unk_1019FFFA0);
    sub_100A1D6EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = v3[8];
    v11 = v3[6];
    v34 = v3[7];
    v35 = v10;
    v12 = v3[8];
    v13 = v3[10];
    v36 = v3[9];
    v37 = v13;
    v14 = v3[4];
    v15 = v3[6];
    v32 = v3[5];
    v33 = v15;
    v16 = v3[4];
    v28 = v12;
    v29 = v36;
    v30 = v3[10];
    v31 = v16;
    v24 = v14;
    v25 = v32;
    v26 = v11;
    v27 = v34;
    v23 = 6;
    sub_10000BE14(&v31, v22, &qword_1019FFF80);
    sub_100A1D770();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22[4] = v28;
    v22[5] = v29;
    v22[6] = v30;
    v22[0] = v24;
    v22[1] = v25;
    v22[2] = v26;
    v22[3] = v27;
    sub_10000CAAC(v22, &qword_1019FFF80);
    v20 = *(v3 + 22);
    v21 = *(v3 + 184);
    v19 = 7;
    sub_1005B981C(&qword_1019FFF70);
    sub_100A1D7C4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + 24);
    v21 = *(v3 + 200);
    v19 = 8;
    sub_1005B981C(&qword_1019FFFD8);
    sub_100A1D848();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + 26);
    v21 = *(v3 + 216);
    v19 = 9;
    sub_1005B981C(&qword_1019FFF60);
    sub_100A1D8CC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 30);
    v19 = 11;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100A1A7AC(uint64_t a1)
{

  *(v1 + 240) = a1;
  return result;
}

uint64_t sub_100A1A7F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  v17[12] = *(a1 + 192);
  v17[13] = v2;
  v17[14] = *(a1 + 224);
  v18 = *(a1 + 240);
  v3 = *(a1 + 144);
  v17[8] = *(a1 + 128);
  v17[9] = v3;
  v4 = *(a1 + 176);
  v17[10] = *(a1 + 160);
  v17[11] = v4;
  v5 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v5;
  v6 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v6;
  v7 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v7;
  v8 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v8;
  v9 = *(a2 + 208);
  v19[12] = *(a2 + 192);
  v19[13] = v9;
  v19[14] = *(a2 + 224);
  v20 = *(a2 + 240);
  v10 = *(a2 + 144);
  v19[8] = *(a2 + 128);
  v19[9] = v10;
  v11 = *(a2 + 176);
  v19[10] = *(a2 + 160);
  v19[11] = v11;
  v12 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v12;
  v13 = *(a2 + 112);
  v19[6] = *(a2 + 96);
  v19[7] = v13;
  v14 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v14;
  v15 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v15;
  return sub_100A1A23C(v17, v19) & 1;
}

double sub_100A1A8BC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100A1C9F8(a1, v12);
  if (!v2)
  {
    v5 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v5;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v6 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v6;
    v7 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v7;
    v8 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v8;
    v9 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v9;
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t sub_100A1A96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100967AAC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A1A9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100967AAC();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A1AA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100694290();
  v7 = sub_100A1D998();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100A1AA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100967AAC();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100A1AB68(uint64_t a1)
{
  v2 = sub_100A1AF94();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100A1ABB8()
{
  result = qword_101A0CBB0;
  if (!qword_101A0CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBB0);
  }

  return result;
}

unint64_t sub_100A1AC10()
{
  result = qword_101A0CBB8;
  if (!qword_101A0CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBB8);
  }

  return result;
}

unint64_t sub_100A1AC6C()
{
  result = qword_101A0CBC0;
  if (!qword_101A0CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBC0);
  }

  return result;
}

unint64_t sub_100A1ACC4()
{
  result = qword_101A0CBC8;
  if (!qword_101A0CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBC8);
  }

  return result;
}

unint64_t sub_100A1AD1C()
{
  result = qword_101A0CBD0;
  if (!qword_101A0CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBD0);
  }

  return result;
}

unint64_t sub_100A1AD74()
{
  result = qword_101A0CBD8;
  if (!qword_101A0CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBD8);
  }

  return result;
}

unint64_t sub_100A1ADCC()
{
  result = qword_101A0CBE0;
  if (!qword_101A0CBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBE0);
  }

  return result;
}

unint64_t sub_100A1AE24()
{
  result = qword_101A0CBE8;
  if (!qword_101A0CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBE8);
  }

  return result;
}

unint64_t sub_100A1AE7C()
{
  result = qword_101A0CBF0;
  if (!qword_101A0CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBF0);
  }

  return result;
}

unint64_t sub_100A1AED4()
{
  result = qword_101A0CBF8;
  if (!qword_101A0CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CBF8);
  }

  return result;
}

unint64_t sub_100A1AF2C()
{
  result = qword_101A0CC00;
  if (!qword_101A0CC00)
  {
    sub_1005C4E5C(&qword_101A0CC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC00);
  }

  return result;
}

unint64_t sub_100A1AF94()
{
  result = qword_101A0CC10;
  if (!qword_101A0CC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC10);
  }

  return result;
}

uint64_t sub_100A1AFE8(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = *a2;
    *v72 = *a1;
    *&v72[8] = v7;
    v72[16] = v4;
    if (v5 == 255)
    {
      v11 = v6;
      v12 = v7;
      sub_100962384(v6, v7, v4 & 1);
      sub_1009623C0(v11, v12, v4 & 1);
      goto LABEL_43;
    }

    v82 = v8;
    LOBYTE(v83) = v5 & 1;
    sub_100962384(v6, v7, v4 & 1);
    sub_1007A9874();
    v9 = static CRExtensible.== infix(_:_:)();
    sub_1009623C0(*v72, *&v72[8], v72[16]);
    if ((v9 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v10 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (*(a1 + 20) != *(a2 + 5))
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_43;
    }
  }

  v13 = *(a1 + 25);
  v14 = *(a2 + 25);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v15 = 0;
    if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
    {
      return v15 & 1;
    }
  }

  v16 = *(a1 + 26);
  v17 = *(a2 + 26);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      goto LABEL_43;
    }

LABEL_23:
    v18 = *(a1 + 40);
    v19 = *(a2 + 40);
    if (v18 == 255)
    {
      if (v19 != 255)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v20 = *(a2 + 4);
      *v72 = *(a1 + 32);
      v72[8] = v18;
      if (v19 == 255)
      {
        goto LABEL_43;
      }

      *&v82 = v20;
      BYTE8(v82) = v19 & 1;
      type metadata accessor for CRLWPUnderline(0);
      sub_100A1D950(&unk_101A0DA60, type metadata accessor for CRLWPUnderline);
      if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v21 = *(a1 + 56);
    v22 = *(a2 + 56);
    if (v21 == 255)
    {
      if (v22 != 255)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v23 = *(a2 + 6);
      *v72 = *(a1 + 48);
      v72[8] = v21;
      if (v22 == 255)
      {
        goto LABEL_43;
      }

      *&v82 = v23;
      BYTE8(v82) = v22 & 1;
      type metadata accessor for CRLWPStrikethru(0);
      sub_100A1D950(&unk_101A0DA50, type metadata accessor for CRLWPStrikethru);
      if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v24 = *(a1 + 144);
    v86 = *(a1 + 128);
    v87 = v24;
    v88 = *(a1 + 160);
    v25 = *(a1 + 80);
    v82 = *(a1 + 64);
    v83 = v25;
    v26 = *(a1 + 112);
    v84 = *(a1 + 96);
    v85 = v26;
    v27 = a2[5];
    v80[0] = a2[4];
    v80[1] = v27;
    v28 = a2[6];
    v29 = a2[7];
    v30 = a2[10];
    v80[5] = a2[9];
    v81 = v30;
    v31 = a2[8];
    v80[3] = v29;
    v80[4] = v31;
    v80[2] = v28;
    v32 = v82;
    v33 = BYTE8(v82);
    v34 = v88;
    v35 = *(&v81 + 1);
    if (v88)
    {
      if (v81)
      {
        v36 = a2[5];
        *v72 = a2[4];
        *&v72[16] = v36;
        v37 = a2[9];
        *&v72[64] = a2[8];
        *&v72[80] = v37;
        v38 = a2[7];
        *&v72[32] = a2[6];
        *&v72[48] = v38;
        *&v72[96] = v81;
        *v63 = *&v72[9];
        *&v63[16] = *&v72[25];
        *&v63[79] = *&v72[88];
        *&v63[48] = *&v72[57];
        *&v63[64] = *&v72[73];
        *&v63[32] = *&v72[41];
        *&v91[0] = v82;
        BYTE8(v91[0]) = BYTE8(v82) & 1;
        *&v89[0] = *v72;
        BYTE8(v89[0]) = v72[8] & 1;
        sub_10000BE14(&v82, &v64, &qword_1019FFF80);
        sub_10000BE14(v80, &v64, &qword_1019FFF80);
        sub_100A1B84C();
        if (static CRExtensible.== infix(_:_:)())
        {
          v39 = *(a1 + 128);
          v89[2] = *(a1 + 112);
          v89[3] = v39;
          v89[4] = *(a1 + 144);
          v40 = *(a1 + 96);
          v89[0] = *(a1 + 80);
          v89[1] = v40;
          v90 = v34;
          v91[2] = *&v63[39];
          v91[3] = *&v63[55];
          v91[4] = *&v63[71];
          v92 = *&v63[87];
          v91[0] = *&v63[7];
          v91[1] = *&v63[23];
          if (sub_1008AFE44(v89, v91))
          {
            v41 = sub_100B3216C(*(&v34 + 1), v35);
            sub_10000CAAC(v72, &qword_1019FFF80);
            v64 = v32;
            v65 = v33;
            v68 = *(a1 + 105);
            v69 = *(a1 + 121);
            *v70 = *(a1 + 137);
            v42 = *(a1 + 152);
            v66 = *(a1 + 73);
            v67 = *(a1 + 89);
            *&v70[15] = v42;
            v71 = v34;
            sub_10000CAAC(&v64, &qword_1019FFF80);
            if ((v41 & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_46;
          }
        }

        sub_10000CAAC(v72, &qword_1019FFF80);
        v64 = v32;
        v65 = v33;
        v68 = *(a1 + 105);
        v69 = *(a1 + 121);
        *v70 = *(a1 + 137);
        v50 = *(a1 + 152);
        v66 = *(a1 + 73);
        v67 = *(a1 + 89);
        *&v70[15] = v50;
        v71 = v34;
        v49 = &v64;
        v48 = &qword_1019FFF80;
LABEL_42:
        sub_10000CAAC(v49, v48);
        goto LABEL_43;
      }
    }

    else if (!v81)
    {
      *v72 = v82;
      v72[8] = BYTE8(v82);
      *&v72[41] = *(a1 + 105);
      *&v72[57] = *(a1 + 121);
      *&v72[73] = *(a1 + 137);
      v52 = *(a1 + 152);
      *&v72[9] = *(a1 + 73);
      *&v72[25] = *(a1 + 89);
      *&v72[88] = v52;
      *&v72[96] = 0;
      *&v72[104] = *(&v88 + 1);
      sub_10000BE14(&v82, &v64, &qword_1019FFF80);
      sub_10000BE14(v80, &v64, &qword_1019FFF80);
      sub_10000CAAC(v72, &qword_1019FFF80);
LABEL_46:
      v53 = *(a1 + 184);
      v54 = *(a2 + 184);
      if (v53 == 255)
      {
        if (v54 != 255)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v55 = *(a2 + 22);
        *v72 = *(a1 + 176);
        v72[8] = v53;
        if (v54 == 255)
        {
          goto LABEL_43;
        }

        v64 = v55;
        v65 = v54 & 1;
        type metadata accessor for CRLWPParagraphAlignment(0);
        sub_100A1D950(&qword_1019FFF78, type metadata accessor for CRLWPParagraphAlignment);
        if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v56 = *(a1 + 200);
      v57 = *(a2 + 200);
      if (v56 == 255)
      {
        if (v57 != 255)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v58 = *(a2 + 24);
        *v72 = *(a1 + 192);
        v72[8] = v56;
        if (v57 == 255)
        {
          goto LABEL_43;
        }

        v64 = v58;
        v65 = v57 & 1;
        type metadata accessor for CRLWPWritingDirection(0);
        sub_100A1D950(&unk_1019FFFE0, type metadata accessor for CRLWPWritingDirection);
        if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v59 = *(a1 + 216);
      v60 = *(a2 + 216);
      if (v59 == 255)
      {
        if (v60 != 255)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v61 = *(a2 + 26);
        *v72 = *(a1 + 208);
        v72[8] = v59;
        if (v60 == 255)
        {
          goto LABEL_43;
        }

        v64 = v61;
        v65 = v60 & 1;
        sub_1007A96C8();
        if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v62 = *(a2 + 232);
      if ((*(a1 + 232) & 1) == 0)
      {
        if (*(a1 + 224) != *(a2 + 28))
        {
          v62 = 1;
        }

        if (v62)
        {
          goto LABEL_43;
        }

LABEL_67:
        v15 = sub_100B3216C(*(a1 + 240), *(a2 + 30));
        return v15 & 1;
      }

      if (*(a2 + 232))
      {
        goto LABEL_67;
      }

LABEL_43:
      v15 = 0;
      return v15 & 1;
    }

    *v72 = v82;
    v72[8] = BYTE8(v82);
    *&v72[41] = *(a1 + 105);
    *&v72[57] = *(a1 + 121);
    *&v72[73] = *(a1 + 137);
    v43 = *(a1 + 152);
    *&v72[9] = *(a1 + 73);
    *&v72[25] = *(a1 + 89);
    *&v72[88] = v43;
    *&v72[96] = v88;
    v44 = a2[5];
    v73 = a2[4];
    v74 = v44;
    v45 = a2[6];
    v46 = a2[7];
    v47 = a2[9];
    v77 = a2[8];
    v78 = v47;
    v75 = v45;
    v76 = v46;
    v79 = v81;
    sub_10000BE14(&v82, &v64, &qword_1019FFF80);
    sub_10000BE14(v80, &v64, &qword_1019FFF80);
    v48 = &unk_1019FFF90;
    v49 = v72;
    goto LABEL_42;
  }

  v15 = 0;
  if (v17 != 2 && ((v17 ^ v16) & 1) == 0)
  {
    goto LABEL_23;
  }

  return v15 & 1;
}

unint64_t sub_100A1B84C()
{
  result = qword_101A0CC18;
  if (!qword_101A0CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC18);
  }

  return result;
}

uint64_t sub_100A1B8A0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208];
  v8 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176];
  v146 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192];
  v147 = v7;
  v9 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208];
  v148 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224];
  v10 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144];
  v11 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112];
  v142 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128];
  v143 = v10;
  v12 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144];
  v13 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176];
  v144 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160];
  v145 = v13;
  v14 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80];
  v15 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48];
  v138 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64];
  v139 = v14;
  v16 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80];
  v17 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112];
  v140 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96];
  v141 = v17;
  v18 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16];
  v134 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
  v135 = v18;
  v19 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48];
  v21 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
  v20 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16];
  v136 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32];
  v137 = v19;
  v150[12] = v146;
  v150[13] = v9;
  v150[14] = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224];
  v150[8] = v142;
  v150[9] = v12;
  v150[10] = v144;
  v150[11] = v8;
  v150[4] = v138;
  v150[5] = v16;
  v150[6] = v140;
  v150[7] = v11;
  v150[0] = v21;
  v150[1] = v20;
  v149 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240];
  v151 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240];
  v150[2] = v136;
  v150[3] = v15;
  result = sub_100695050(v150);
  if (result == 1)
  {
    v23 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v23)
    {
      __break(1u);
      return result;
    }

    (*(*v23 + 896))();
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_1005E0ADC(v6, type metadata accessor for CRLWPShapeItemCRDTData);
    v130 = v113;
    v131 = v114;
    v132 = v115;
    v133 = v116;
    v126 = v109;
    v127 = v110;
    v128 = v111;
    v129 = v112;
    v122 = v105;
    v123 = v106;
    v124 = v107;
    v125 = v108;
    v118 = v101;
    v119 = v102;
    v24 = v103;
    v25 = v104;
  }

  else
  {
    v130 = v146;
    v131 = v147;
    v132 = v148;
    v133 = v149;
    v126 = v142;
    v127 = v143;
    v128 = v144;
    v129 = v145;
    v122 = v138;
    v123 = v139;
    v124 = v140;
    v125 = v141;
    v118 = v134;
    v119 = v135;
    v24 = v136;
    v25 = v137;
  }

  v120 = v24;
  v121 = v25;
  KeyPath = swift_getKeyPath();
  sub_10000BE14(&v134, &v101, &unk_101A0D830);
  v27 = sub_100A185DC(KeyPath, a1);
  v29 = v28;
  v31 = v30;
  v32 = ~v30;

  if (!v32)
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    if (sub_100695050(&v101) == 1)
    {
      v27 = 0;
      v29 = 0;
      v31 = 255;
    }

    else
    {
      v29 = *(&v101 + 1);
      v27 = v101;
      v31 = v102;
      sub_100962438(v101, *(&v101 + 1), v102);
    }
  }

  v33 = swift_getKeyPath();
  v34 = sub_100A18B3C(v33, a1);

  if ((v34 & 0x100000000) != 0)
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    if (sub_100695050(&v101) == 1)
    {
      v89 = 0;
      v35 = 1;
    }

    else
    {
      v89 = DWORD1(v102);
      v35 = BYTE8(v102);
    }
  }

  else
  {
    v89 = v34;
    v35 = 0;
  }

  v117 = v35;
  v36 = swift_getKeyPath();
  v37 = sub_100A18ED0(v36, a1, &type metadata for CRLWPFontBoldAttribute, sub_1008244A8, sub_10095BC20);

  if (v37 == 2)
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    if (sub_100695050(&v101) == 1)
    {
      v37 = 2;
    }

    else
    {
      v37 = BYTE9(v102);
    }
  }

  v38 = swift_getKeyPath();
  v39 = sub_100A18ED0(v38, a1, &type metadata for CRLWPFontItalicAttribute, sub_1008245B4, sub_10095ACBC);

  if (v39 == 2)
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    if (sub_100695050(&v101) == 1)
    {
      v39 = 2;
    }

    else
    {
      v39 = BYTE10(v102);
    }
  }

  v92 = v27;
  v40 = swift_getKeyPath();
  v96 = sub_100A19260(v40, a1, &type metadata for CRLWPUnderlineAttribute, sub_100824704, sub_100959D4C, sub_100967E60);
  v95 = v41;
  v42 = ~v41;

  if (!v42)
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    if (sub_100695050(&v101) == 1)
    {
      v96 = 0;
      v43 = 255;
    }

    else
    {
      v96 = v103;
      v43 = BYTE8(v103);
    }

    v95 = v43;
  }

  v44 = swift_getKeyPath();
  v45 = sub_100A19260(v44, a1, &type metadata for CRLWPStrikethroughAttribute, sub_10096227C, sub_100958DDC, sub_100967E60);
  v94 = v46;
  v47 = ~v46;

  if (!v47)
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    if (sub_100695050(&v101) == 1)
    {
      v45 = 0;
      v48 = 255;
    }

    else
    {
      v45 = v104;
      v48 = BYTE8(v104);
    }

    v94 = v48;
  }

  v49 = swift_getKeyPath();
  sub_100A19600(v49, a1, v98);

  v91 = v29;
  v87 = v45;
  if (v99)
  {
    v86 = v99;
    v85 = v100;
    v81 = v98[5];
    v82 = v98[3];
    v79 = v98[4];
    v80 = v98[2];
    v83 = v98[1];
    v84 = v98[0];
  }

  else
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    if (sub_100695050(&v101) == 1)
    {
      v85 = 0;
      v86 = 0;
      v83 = 0u;
      v84 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
    }

    else
    {
      sub_10000BE14(&v105, &v97, &qword_1019FFF80);
      v83 = v106;
      v84 = v105;
      v81 = v110;
      v82 = v108;
      v79 = v109;
      v80 = v107;
      v85 = *(&v111 + 1);
      v86 = v111;
    }
  }

  v50 = swift_getKeyPath();
  v51 = sub_100A19260(v50, a1, &type metadata for CRLWPParagraphAlignmentAttribute, sub_1006ACAD4, sub_1009569D8, sub_100967E60);
  v93 = v52;
  v53 = ~v52;

  v90 = v31;
  if (!v53)
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    if (sub_100695050(&v101) == 1)
    {
      v51 = 0;
      v54 = 255;
    }

    else
    {
      v51 = v112;
      v54 = BYTE8(v112);
    }

    v93 = v54;
  }

  v55 = swift_getKeyPath();
  v56 = sub_100A19260(v55, a1, &type metadata for CRLWPWritingDirectionAttribute, sub_100962450, sub_100955B74, sub_1000C1080);
  v58 = v57;
  v59 = ~v57;

  v88 = v37;
  if (v59)
  {
    v77 = v56;
  }

  else
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    if (sub_100695050(&v101) == 1)
    {
      v77 = 0;
      v58 = -1;
    }

    else
    {
      v77 = v113;
      v58 = BYTE8(v113);
    }
  }

  v60 = swift_getKeyPath();
  v61 = sub_100A19B18(v60, a1);
  v63 = v62;
  v64 = ~v62;

  v78 = v51;
  if (v64)
  {
    v65 = v39;
  }

  else
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    v65 = v39;
    if (sub_100695050(&v101) == 1)
    {
      v61 = 0;
      v63 = -1;
    }

    else
    {
      v61 = v114;
      v63 = BYTE8(v114);
    }
  }

  v66 = swift_getKeyPath();
  v67 = sub_100A19EA0(v66, a1);
  v69 = v68;

  if (v69)
  {
    v113 = v130;
    v114 = v131;
    v115 = v132;
    v116 = v133;
    v109 = v126;
    v110 = v127;
    v111 = v128;
    v112 = v129;
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    result = sub_100695050(&v101);
    if (result == 1)
    {
      v67 = 0;
      v70 = 1;
    }

    else
    {
      result = sub_10000CAAC(&v118, &unk_101A0D830);
      v67 = v115;
      v70 = BYTE8(v115);
    }
  }

  else
  {
    result = sub_10000CAAC(&v118, &unk_101A0D830);
    v70 = 0;
  }

  v71 = v89;
  LOBYTE(v101) = v70;
  v72 = v117;
  *a2 = v92;
  *(a2 + 8) = v91;
  *(a2 + 16) = v90;
  *(a2 + 20) = v71;
  *(a2 + 24) = v72;
  *(a2 + 25) = v88;
  *(a2 + 26) = v65;
  *(a2 + 32) = v96;
  *(a2 + 40) = v95;
  *(a2 + 48) = v87;
  *(a2 + 56) = v94;
  v73 = v83;
  *(a2 + 64) = v84;
  *(a2 + 80) = v73;
  v74 = v82;
  *(a2 + 96) = v80;
  *(a2 + 112) = v74;
  v75 = v81;
  *(a2 + 128) = v79;
  *(a2 + 144) = v75;
  v76 = v85;
  *(a2 + 160) = v86;
  *(a2 + 168) = v76;
  *(a2 + 176) = v78;
  *(a2 + 184) = v93;
  *(a2 + 192) = v77;
  *(a2 + 200) = v58;
  *(a2 + 208) = v61;
  *(a2 + 216) = v63;
  *(a2 + 224) = v67;
  *(a2 + 232) = v70;
  *(a2 + 240) = _swiftEmptyDictionarySingleton;
  return result;
}

double sub_100A1C544@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 3;
  if (a1)
  {
    v2 = 5;
  }

  *a2 = 0;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  *(a2 + 24) = 1;
  *(a2 + 25) = a1 != 0;
  *(a2 + 26) = 2;
  *(a2 + 32) = 0;
  *(a2 + 40) = -1;
  *(a2 + 48) = 0;
  *(a2 + 56) = -1;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 2;
  *(a2 + 184) = 0;
  *(a2 + 192) = -1;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 1;
  *(a2 + 240) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100A1C5E4(uint64_t a1)
{
  if ((a1 + 1) > 0xB)
  {
    return 12;
  }

  else
  {
    return byte_10148EC48[a1 + 1];
  }
}

uint64_t sub_100A1C608(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E6F665FLL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7A6953746E6F665FLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C6F625FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C6174695FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696C7265646E755FLL && a2 == 0xEA0000000000656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74656B697274735FLL && a2 == 0xEE006867756F7268 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746361726168635FLL && a2 == 0xEE006C6C69467265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101582DE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101582E00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7974537473696C5FLL && a2 == 0xEE0065707954656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6174537473696C5FLL && a2 == 0xEA00000000007472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_100A1C9F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = sub_1005B981C(&qword_101A0CC28);
  v5 = *(v105 - 8);
  __chkstk_darwin(v105);
  v7 = &v22 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100A1AE24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  sub_1005B981C(&qword_1019FFFC8);
  LOBYTE(v41) = 0;
  sub_100A1D278();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v39 = v50;
  v40 = v51;
  LOBYTE(v50) = 1;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v102 = BYTE4(v8) & 1;
  LOBYTE(v50) = 2;
  v9 = v8;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = v9;
  LOBYTE(v50) = 3;
  v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_1005B981C(&unk_1019FFFB0);
  LOBYTE(v41) = 4;
  sub_100A1D2FC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v50;
  LODWORD(v9) = BYTE8(v50);
  sub_1005B981C(&unk_1019FFFA0);
  LOBYTE(v41) = 5;
  sub_100A1D380();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v9;
  v34 = v50;
  LODWORD(v9) = BYTE8(v50);
  v87 = 6;
  sub_100A1D404();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v32 = v9;
  *&v100[55] = v91;
  *&v100[71] = v92;
  *&v100[87] = v93;
  *&v100[103] = v94;
  *&v100[7] = v88;
  *&v100[23] = v89;
  *&v100[39] = v90;
  sub_1005B981C(&qword_1019FFF70);
  LOBYTE(v41) = 7;
  sub_100A1D458();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v10 = v34;
  v31 = v50;
  v30 = BYTE8(v50);
  sub_1005B981C(&qword_1019FFFD8);
  LOBYTE(v41) = 8;
  sub_100A1D4DC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = v50;
  v28 = BYTE8(v50);
  sub_1005B981C(&qword_1019FFF60);
  LOBYTE(v41) = 9;
  sub_100A1D560();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v50;
  v26 = BYTE8(v50);
  LOBYTE(v50) = 10;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v96 = v11 & 1;
  sub_1005B981C(&unk_101A0D960);
  v85 = 11;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v105);
  v105 = v86;
  v12 = v39;
  v41 = v39;
  v13 = v40;
  LOBYTE(v42) = v40;
  DWORD1(v42) = v38;
  v23 = v102;
  BYTE8(v42) = v102;
  BYTE9(v42) = v37;
  BYTE10(v42) = v36;
  *&v43 = v35;
  BYTE8(v43) = v33;
  *&v44[0] = v10;
  BYTE8(v44[0]) = v32;
  *(&v44[4] + 9) = *&v100[64];
  *(&v44[5] + 9) = *&v100[80];
  *(&v44[6] + 9) = *&v100[96];
  *(v44 + 9) = *v100;
  *(&v44[1] + 9) = *&v100[16];
  *(&v44[2] + 9) = *&v100[32];
  *(&v44[3] + 9) = *&v100[48];
  *(&v44[7] + 1) = *&v100[111];
  *&v45 = v31;
  BYTE8(v45) = v30;
  *&v46 = v29;
  BYTE8(v46) = v28;
  *&v47 = v27;
  BYTE8(v47) = v26;
  *&v48 = v25;
  v24 = v96;
  BYTE8(v48) = v96;
  v49 = v86;
  sub_100880AD0(&v41, &v50);
  sub_100005070(a1);
  v50 = v12;
  v51 = v13;
  v52 = v103;
  v53 = v104;
  v54 = v38;
  v55 = v23;
  v56 = v37;
  v57 = v36;
  v58 = *&v101[7];
  v59 = v101[11];
  v60 = v35;
  v61 = v33;
  *&v62[3] = *&v101[3];
  *v62 = *v101;
  v63 = v10;
  v64 = v32;
  v69 = *&v100[64];
  v70 = *&v100[80];
  *v71 = *&v100[96];
  v65 = *v100;
  v66 = *&v100[16];
  v67 = *&v100[32];
  v68 = *&v100[48];
  *&v71[15] = *&v100[111];
  v72 = v31;
  v73 = v30;
  *&v74[3] = *&v99[3];
  *v74 = *v99;
  v75 = v29;
  v76 = v28;
  *&v77[3] = *&v98[3];
  *v77 = *v98;
  v78 = v27;
  v79 = v26;
  *&v80[3] = *&v97[3];
  *v80 = *v97;
  v81 = v25;
  v82 = v24;
  *&v83[3] = *&v95[3];
  *v83 = *v95;
  v84 = v105;
  result = sub_10081852C(&v50);
  v15 = v47;
  *(a2 + 192) = v46;
  *(a2 + 208) = v15;
  *(a2 + 224) = v48;
  *(a2 + 240) = v49;
  v16 = v44[6];
  *(a2 + 128) = v44[5];
  *(a2 + 144) = v16;
  v17 = v45;
  *(a2 + 160) = v44[7];
  *(a2 + 176) = v17;
  v18 = v44[2];
  *(a2 + 64) = v44[1];
  *(a2 + 80) = v18;
  v19 = v44[4];
  *(a2 + 96) = v44[3];
  *(a2 + 112) = v19;
  v20 = v42;
  *a2 = v41;
  *(a2 + 16) = v20;
  v21 = v44[0];
  *(a2 + 32) = v43;
  *(a2 + 48) = v21;
  return result;
}

unint64_t sub_100A1D278()
{
  result = qword_101A0CC30;
  if (!qword_101A0CC30)
  {
    sub_1005C4E5C(&qword_1019FFFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC30);
  }

  return result;
}

unint64_t sub_100A1D2FC()
{
  result = qword_101A0CC38;
  if (!qword_101A0CC38)
  {
    sub_1005C4E5C(&unk_1019FFFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC38);
  }

  return result;
}

unint64_t sub_100A1D380()
{
  result = qword_101A0CC40;
  if (!qword_101A0CC40)
  {
    sub_1005C4E5C(&unk_1019FFFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC40);
  }

  return result;
}

unint64_t sub_100A1D404()
{
  result = qword_101A0CC48;
  if (!qword_101A0CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC48);
  }

  return result;
}

unint64_t sub_100A1D458()
{
  result = qword_101A0CC50;
  if (!qword_101A0CC50)
  {
    sub_1005C4E5C(&qword_1019FFF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC50);
  }

  return result;
}

unint64_t sub_100A1D4DC()
{
  result = qword_101A0CC58;
  if (!qword_101A0CC58)
  {
    sub_1005C4E5C(&qword_1019FFFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC58);
  }

  return result;
}

unint64_t sub_100A1D560()
{
  result = qword_101A0CC60;
  if (!qword_101A0CC60)
  {
    sub_1005C4E5C(&qword_1019FFF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC60);
  }

  return result;
}

unint64_t sub_100A1D5E4()
{
  result = qword_101A0CC70;
  if (!qword_101A0CC70)
  {
    sub_1005C4E5C(&qword_1019FFFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC70);
  }

  return result;
}

unint64_t sub_100A1D668()
{
  result = qword_101A0CC78;
  if (!qword_101A0CC78)
  {
    sub_1005C4E5C(&unk_1019FFFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC78);
  }

  return result;
}

unint64_t sub_100A1D6EC()
{
  result = qword_101A0CC80;
  if (!qword_101A0CC80)
  {
    sub_1005C4E5C(&unk_1019FFFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC80);
  }

  return result;
}

unint64_t sub_100A1D770()
{
  result = qword_101A0CC88;
  if (!qword_101A0CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC88);
  }

  return result;
}

unint64_t sub_100A1D7C4()
{
  result = qword_101A0CC90;
  if (!qword_101A0CC90)
  {
    sub_1005C4E5C(&qword_1019FFF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC90);
  }

  return result;
}

unint64_t sub_100A1D848()
{
  result = qword_101A0CC98;
  if (!qword_101A0CC98)
  {
    sub_1005C4E5C(&qword_1019FFFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CC98);
  }

  return result;
}

unint64_t sub_100A1D8CC()
{
  result = qword_101A0CCA0;
  if (!qword_101A0CCA0)
  {
    sub_1005C4E5C(&qword_1019FFF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CCA0);
  }

  return result;
}

uint64_t sub_100A1D950(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100A1D998()
{
  result = qword_101A0CCA8;
  if (!qword_101A0CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CCA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLTransactablePropertyMapKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLTransactablePropertyMapKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100A1DB40()
{
  result = qword_101A0CCB0;
  if (!qword_101A0CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CCB0);
  }

  return result;
}

void *sub_100A1DB94()
{
  v0 = type metadata accessor for PKDrawing();
  v1 = *(v0 - 1);
  __chkstk_darwin(v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_opt_self() allDrawingItemsDescendedFromContainer:Strong];
    type metadata accessor for CRLFreehandDrawingItem();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100B434D0(v7);

    v8 = objc_opt_self();
    isa = PKDrawing._bridgeToObjectiveC()().super.isa;
    v10 = [v8 indexableStringFromDrawing:isa];

    if (!v10)
    {

      (*(v1 + 8))(v3, v0);
      return _swiftEmptyArrayStorage;
    }

    v47 = v5;
    v48 = v3;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v51[0] = v11;
    v51[1] = v13;
    v49 = 10;
    v50 = 0xE100000000000000;
    sub_100017CD8();
    v14 = StringProtocol.components<A>(separatedBy:)();

    v15 = 0;
    v16 = *(v14 + 16);
    v17 = v14 + 40;
    v18 = _swiftEmptyArrayStorage;
LABEL_4:
    v19 = (v17 + 16 * v15);
    while (1)
    {
      if (v16 == v15)
      {

        (*(v1 + 8))(v48, v0);
        return v18;
      }

      if (v15 >= *(v14 + 16))
      {
        break;
      }

      ++v15;
      v20 = *(v19 - 1);
      v13 = *v19;
      v19 += 2;
      v21 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v21 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51[0] = v18;
        v45 = v1;
        v46 = v0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100034080(0, v18[2] + 1, 1);
          v18 = v51[0];
        }

        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          sub_100034080((v23 > 1), v24 + 1, 1);
          v18 = v51[0];
        }

        v18[2] = v24 + 1;
        v25 = &v18[2 * v24];
        v25[4] = v20;
        v25[5] = v13;
        v1 = v45;
        v0 = v46;
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v15 = objc_opt_self();
  LODWORD(v17) = [v15 _atomicIncrementAssertCount];
  v51[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v51);
  StaticString.description.getter();
  v0 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  v27 = [v26 lastPathComponent];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = v28;

  if (qword_1019F20A0 != -1)
  {
LABEL_21:
    swift_once();
  }

  v29 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v17;
  v31 = sub_1005CF000();
  *(inited + 96) = v31;
  v32 = sub_1005CF04C();
  *(inited + 104) = v32;
  *(inited + 72) = v0;
  *(inited + 136) = &type metadata for String;
  v33 = sub_1000053B0();
  *(inited + 112) = v13;
  *(inited + 120) = v1;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v33;
  *(inited + 152) = 21;
  v34 = v51[0];
  *(inited + 216) = v31;
  *(inited + 224) = v32;
  *(inited + 192) = v34;
  v35 = v0;
  v36 = v34;
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v38 = static os_log_type_t.error.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100005404(v29, &_mh_execute_header, v38, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v39 = swift_allocObject();
  v39[2] = 8;
  v39[3] = 0;
  v39[4] = 0;
  v39[5] = 0;
  v40 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  [v15 handleFailureInFunction:v41 file:v42 lineNumber:21 isFatal:0 format:v43 args:v40];

  return v18;
}

id sub_100A1E210()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLPKDrawingIndexableModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100A1E27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v18 = a2;
  swift_unknownObjectRetain();
  sub_1005B981C(&qword_101A00168);
  sub_1005B981C(&qword_101A0CDA0);
  if (swift_dynamicCast())
  {
    sub_100050F74(v15, v19);
    v5 = v20;
    v6 = v21;
    sub_100020E58(v19, v20);
    inited = (*(v6 + 8))(*(v3 + 16), a3, v5, v6);
    sub_100005070(v19);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_100A1E4B0(v15);
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getObjectType();
    v9 = _typeName(_:qualified:)();
    v11 = v10;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v11;
    v12 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v12, "CRLBoardLogicProvider cannot create a cloud record from an unknown local record. Local Record: %{public}@", 105, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_100A1E518();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  return inited;
}

uint64_t sub_100A1E4B0(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0CDA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100A1E518()
{
  result = qword_101A0CDB0;
  if (!qword_101A0CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CDB0);
  }

  return result;
}

unint64_t sub_100A1E580()
{
  result = qword_101A0CDB8;
  if (!qword_101A0CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0CDB8);
  }

  return result;
}

uint64_t sub_100A1E6C4()
{
  swift_getKeyPath();

  sub_1005B981C(qword_101A0CF60);
  CRAttributedString.Attributes.subscript.getter();
}

char *sub_100A1E7A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CharacterSet();
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019FC080);
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = &v45 - v7;
  v8 = sub_1005B981C(&unk_1019FFD10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v45 - v20;
  v54 = v2;
  v22 = [v2 textRangeForParagraphAtCharIndex:{a1, v19}];
  if (v22 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = 0;
    if (!v23)
    {
      return v24;
    }
  }

  v47 = v4;
  v25 = v22;
  v26 = v23;
  v27 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  result = sub_10078CDF0(v25, v26);
  v29 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v30 = *&v54[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v30)
  {
    goto LABEL_13;
  }

  v46 = result;
  v31 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v48 = *&result[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  (*(*v30 + 896))();
  sub_100A49D68(&v14[*(v12 + 20)], v21, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v14, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v9 + 16))(v11, v21, v8);
  sub_100A47694(v21, type metadata accessor for CRLWPStorageCRDTData);
  v32 = CRAttributedString.count.getter();
  result = (*(v9 + 8))(v11, v8);
  if (v32 >= (v31 & ~(v31 >> 63)))
  {
    v33 = v31 & ~(v31 >> 63);
  }

  else
  {
    v33 = v32;
  }

  if ((v48 & ~(v48 >> 63)) < v33)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v34 = v54;
  v35 = *&v54[v29];
  if (!v35)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  (*(*v35 + 896))(result);
  sub_100A49D68(&v14[*(v12 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);
  v36 = v34;
  sub_100A47694(v14, type metadata accessor for CRLWPShapeItemCRDTData);
  v37 = v51;
  CRAttributedString.subscript.getter();
  sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
  v38 = v53;
  v39 = CRAttributedString.Substring.attributedString.getter();
  (*(v52 + 8))(v37, v38);
  result = [v39 string];
  v40 = v47;
  if (result)
  {
    v41 = result;

    v42 = v49;
    static CharacterSet.newlines.getter();
    isa = CharacterSet._bridgeToObjectiveC()().super.isa;
    (*(v50 + 8))(v42, v40);
    v44 = [v41 stringByTrimmingCharactersInSet:isa];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v46;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100A1ED54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[1] = a2;
  v30[2] = a3;
  v31 = a1;
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30[0] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v13 - 8);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = v30 - v18;
  v32 = v3;
  v35 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v20 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v20)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  (*(*v20 + 896))(v17);
  v34 = v10;
  sub_100A49D68(&v12[*(v10 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v12, type metadata accessor for CRLWPShapeItemCRDTData);
  v21 = *(v5 + 16);
  v21(v9, v19, v4);
  sub_100A47694(v19, type metadata accessor for CRLWPStorageCRDTData);
  v22 = CRAttributedString.attributedString.getter();
  v33 = *(v5 + 8);
  v33(v9, v4);
  v23 = [v22 length];

  v24 = v23 < v31;
  v25 = v32;
  if (!v24)
  {
LABEL_6:
    v28 = *(v25 + v35);
    if (v28)
    {
      (*(*v28 + 896))();
      sub_100A49D68(&v12[*(v34 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v12, type metadata accessor for CRLWPShapeItemCRDTData);
      v29 = v30[0];
      v21(v30[0], v15, v4);
      sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
      CRAttributedString.cursor(at:affinity:)();
      v33(v29, v4);
      return;
    }

    goto LABEL_9;
  }

  v26 = *(v32 + v35);
  if (v26)
  {
    (*(*v26 + 896))();
    sub_100A49D68(&v12[*(v34 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v12, type metadata accessor for CRLWPShapeItemCRDTData);
    v21(v9, v19, v4);
    sub_100A47694(v19, type metadata accessor for CRLWPStorageCRDTData);
    v27 = CRAttributedString.attributedString.getter();
    v33(v9, v4);
    [v27 length];

    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
}

void sub_100A1F224(unint64_t a1)
{
  v57 = a1;
  v2 = sub_1005B981C(&unk_1019FFD10);
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  __chkstk_darwin(v2);
  v59 = &v53 - v4;
  v58 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v58);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = *(*v10 + 504);
  v12 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_store);

  v13 = v11(0);

  sub_1006950BC(v62);
  v64[12] = v62[12];
  v64[13] = v62[13];
  v64[14] = v62[14];
  v65 = v63;
  v64[8] = v62[8];
  v64[9] = v62[9];
  v64[10] = v62[10];
  v64[11] = v62[11];
  v64[4] = v62[4];
  v64[5] = v62[5];
  v64[6] = v62[6];
  v64[7] = v62[7];
  v64[0] = v62[0];
  v64[1] = v62[1];
  v64[2] = v62[2];
  v64[3] = v62[3];
  v14 = objc_allocWithZone(type metadata accessor for CRLWPStorage());
  v15 = sub_100A41BB8(v12, v13, v64);

  sub_100A34A80();
  v56 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v16 = *&v15[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v16)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(*v16 + 896))();
  sub_100A49D68(&v6[*(v58 + 20)], v9, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v6, type metadata accessor for CRLWPShapeItemCRDTData);
  v17 = v60;
  v18 = v61;
  v19 = v59;
  v55 = *(v61 + 16);
  v55(v59, v9, v60);
  sub_100A47694(v9, type metadata accessor for CRLWPStorageCRDTData);
  v20 = CRAttributedString.attributedString.getter();
  v21 = *(v18 + 8);
  v61 = v18 + 8;
  v54 = v21;
  v21(v19, v17);
  v22 = [v20 length];

  if (v22 < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = [objc_opt_self() mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  sub_100A2E55C(0, v22, v27, v29, 1);

  v31 = v57;
  if (!v57)
  {
    return;
  }

  v32 = *&v15[v56];
  if (!v32)
  {
    goto LABEL_22;
  }

  (*(*v32 + 896))(v30);
  sub_100A49D68(&v6[*(v58 + 20)], v9, type metadata accessor for CRLWPStorageCRDTData);
  v33 = v31;
  sub_100A47694(v6, type metadata accessor for CRLWPShapeItemCRDTData);
  v35 = v59;
  v34 = v60;
  v55(v59, v9, v60);
  sub_100A47694(v9, type metadata accessor for CRLWPStorageCRDTData);
  v36 = CRAttributedString.attributedString.getter();
  v54(v35, v34);
  v37 = [v36 length];

  if (v37 < 0)
  {
    goto LABEL_19;
  }

  KeyPath = swift_getKeyPath();
  v39 = *&v15[v56];
  if (!v39)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v56 = KeyPath;
  (*(*v39 + 896))();
  sub_100A49D68(&v6[*(v58 + 20)], v9, type metadata accessor for CRLWPStorageCRDTData);
  v40 = v33;
  sub_100A47694(v6, type metadata accessor for CRLWPShapeItemCRDTData);
  v41 = v59;
  v42 = v60;
  v55(v59, v9, v60);
  sub_100A47694(v9, type metadata accessor for CRLWPStorageCRDTData);
  v43 = CRAttributedString.count.getter();
  v54(v41, v42);
  if (v43 >= v37)
  {
    v44 = v37;
  }

  else
  {
    v44 = v43;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    ObjectType = swift_getObjectType();
    v48 = swift_conformsToProtocol2();
    if (v48)
    {
      v49 = v48;
      v50 = v15;
      v51 = sub_1012778D4(ObjectType, v49);

      if ((v51 & 1) == 0)
      {

        return;
      }

      goto LABEL_16;
    }

LABEL_24:
    __break(1u);
    return;
  }

  v52 = v15;
LABEL_16:
  sub_1008215B4(v56, v57, 0, v15, v43 & (v43 >> 63), v44);
}

void *sub_100A1F968(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a5;
  *&v111 = a4;
  v112 = a3;
  v103 = a1;
  v6 = sub_1005B981C(&unk_101A09540);
  v109 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v91 - v7;
  v9 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v9 - 8);
  v104 = &v91 - v10;
  v100 = sub_1005B981C(&qword_1019FC080);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v91 - v11;
  v108 = sub_1005B981C(&unk_101A09550);
  v91 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v91 - v12;
  v13 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v13 - 8);
  v110 = &v91 - v14;
  v15 = sub_1005B981C(&unk_101A096C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v91 - v16;
  v116 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v92 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&qword_101A000C0);
  v105 = *(v19 - 8);
  __chkstk_darwin(v19);
  v106 = (&v91 - v20);
  v21 = sub_1005B981C(qword_101A0CF60);
  *&v97 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v91 - v22;
  v113 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v113);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v26);
  v118 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1005B981C(&unk_1019FFD10);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = (&v91 - v31);
  v119 = _swiftEmptyArrayStorage;
  result = [a2 characterCount];
  v101 = a2;
  v34 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  v114 = v19;
  v117 = v17;
  if (result)
  {
    if (!v34)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    (*(*v34 + 896))();
    v35 = v118;
    sub_100A49D68(&v25[*(v113 + 20)], v118, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v25, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v94 + 16))(v93, v35, v95);
    sub_100A47694(v35, type metadata accessor for CRLWPStorageCRDTData);
    v36 = v99;
    CRAttributedString.subscript.getter();
    v37 = v100;
    CRAttributedString.Substring.runs.getter();
    (*(v98 + 8))(v36, v37);
    v38 = v104;
    CRAttributedString.Runs.next()();
    v39 = v109[6];
    v100 = (v109 + 6);
    v99 = v39;
    if ((v39)(v38, 1, v6) != 1)
    {
      v98 = v109[4];
      v109 += 4;
      v96 = (v109 - 3);
      v40 = _swiftEmptyArrayStorage;
      v97 = xmmword_10146C6B0;
      while (1)
      {
        (v98)(v8, v38, v6);
        sub_1005B981C(&qword_101A0DA78);
        v41 = (*(v105 + 80) + 32) & ~*(v105 + 80);
        v112 = *(v105 + 72);
        v42 = swift_allocObject();
        *(v42 + 16) = v97;
        *&v111 = v42;
        v43 = (v42 + v41);
        v118 = CRAttributedString.Runs.Run.range.getter();
        v113 = v44;
        __chkstk_darwin(v118);
        *(&v91 - 4) = &type metadata for CRLWPHyperlinkAttribute;
        v45 = sub_1008247F4();
        v46 = v103;
        *(&v91 - 3) = v45;
        *(&v91 - 2) = v46;
        swift_getKeyPath();
        sub_100824848();

        CRAttributedString.Runs.Run.subscript.getter();

        v47 = v113;
        *v43 = v118;
        v43[1] = v47;
        v48 = v40[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v49 = v40[3] >> 1, v49 <= v48))
        {
          result = sub_100B367A4(result, v48 + 1, 1, v40);
          v40 = result;
          v49 = result[3] >> 1;
        }

        v19 = v114;
        if (v49 <= v40[2])
        {
          break;
        }

        swift_arrayInitWithCopy();

        ++v40[2];
        v119 = v40;
        (*v96)(v8, v6);
        v38 = v104;
        CRAttributedString.Runs.next()();
        if ((v99)(v38, 1, v6) == 1)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_10:
    (*(v91 + 8))(v107, v108);
    sub_100A27DD0();
    (*(v94 + 8))(v93, v95);
  }

  else
  {
    v112 = v21;
    if (!v34)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v50 = v32;
    (*(*v34 + 896))();
    v51 = v118;
    sub_100A49D68(&v25[*(v113 + 20)], v118, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v25, type metadata accessor for CRLWPShapeItemCRDTData);
    v52 = v94;
    v53 = *(v94 + 16);
    v54 = v51 + *(v26 + 20);
    v96 = v50;
    v55 = v95;
    v53(v50, v54, v95);
    sub_100A47694(v51, type metadata accessor for CRLWPStorageCRDTData);
    CRAttributedString.attributes(at:effectiveRange:)();
    sub_1005B981C(&qword_101A0DA78);
    v56 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10146C6B0;
    v58 = (v57 + v56);
    __chkstk_darwin(v57);
    *(&v91 - 4) = &type metadata for CRLWPHyperlinkAttribute;
    v59 = sub_1008247F4();
    v60 = v103;
    *(&v91 - 3) = v59;
    *(&v91 - 2) = v60;
    swift_getKeyPath();
    sub_100824848();

    v61 = v112;
    CRAttributedString.Attributes.subscript.getter();

    *v58 = 0;
    v58[1] = 0;
    sub_100799D48(v57);
    (*(v97 + 8))(v23, v61);
    (*(v52 + 8))(v96, v55);
  }

  v62 = v119[2];
  v63 = v106;
  if (v62)
  {
    v64 = *(v105 + 80);
    v109 = v119;
    v65 = v119 + ((v64 + 32) & ~v64);
    v66 = *(v105 + 72);
    v113 = v92 + 48;
    v111 = xmmword_10146C6B0;
    v112 = v66;
    do
    {
      v118 = v62;
      sub_10000BE14(v65, v63, &qword_101A000C0);
      v74 = v117;
      sub_10000BE14(v63 + *(v19 + 36), v117, &unk_101A096C0);
      v75 = v116;
      if ((*v113)(v74, 1, v116) == 1)
      {
        sub_10000CAAC(v74, &unk_101A096C0);
        sub_10000CAAC(v63, &qword_101A000C0);
      }

      else
      {
        v76 = v115;
        sub_100A49E4C(v74, v115, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v77 = v101;
        sub_100A3400C(*(v76 + *(v75 + 24)), *(v76 + *(v75 + 24) + 8));
        v79 = v78;
        v80 = *(v75 + 20);
        v82 = v81;
        v83 = v110;
        sub_10000BE14(v76 + v80, v110, &unk_1019F33C0);
        v84 = [v77 stringEquivalentFromRange:{v82, v79}];
        v85 = type metadata accessor for URL();
        v86 = *(v85 - 8);
        v88 = 0;
        if ((*(v86 + 48))(v83, 1, v85) != 1)
        {
          v89 = v110;
          URL._bridgeToObjectiveC()(v87);
          v88 = v90;
          (*(v86 + 8))(v89, v85);
        }

        v67 = objc_allocWithZone(CRLWPHyperlinkField);
        v68 = String._bridgeToObjectiveC()();
        v69 = [v67 initWithURL:v88 range:v82 displayText:v79 uuidString:{v84, v68}];

        v63 = v106;
        v70 = *v106;
        v71 = v106[1];
        sub_1005B981C(&qword_101A0DA70);
        inited = swift_initStackObject();
        *(inited + 16) = v111;
        *(inited + 32) = v70;
        *(inited + 40) = v71;
        *(inited + 48) = v69;
        v73 = v69;
        sub_10079B8B0(inited);

        sub_10000CAAC(v63, &qword_101A000C0);
        sub_100A47694(v115, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v19 = v114;
        v66 = v112;
      }

      v65 += v66;
      v62 = v118 - 1;
    }

    while (v118 != 1);
  }
}

uint64_t sub_100A208D8(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t *a5)
{
  v164 = a5;
  v166 = a4;
  v160 = a3;
  v161 = a1;
  v6 = sub_1005B981C(&unk_101A09540);
  v165 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v148 - v7;
  v9 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v9 - 8);
  v11 = &v148 - v10;
  v159 = sub_1005B981C(&qword_1019FC080);
  *&v156 = *(v159 - 1);
  __chkstk_darwin(v159);
  v157 = &v148 - v12;
  v163 = sub_1005B981C(&unk_101A09550);
  v148 = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = &v148 - v13;
  v14 = sub_1005B981C(qword_101A0CF60);
  v155 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v148 - v15;
  v154 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v154);
  v153 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v18);
  v20 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1005B981C(&unk_1019FFD10);
  v150 = *(v21 - 8);
  v151 = v21;
  __chkstk_darwin(v21);
  v149 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v148 - v25;
  v210 = _swiftEmptyArrayStorage;
  v27 = [a2 characterCount];
  v152 = a2;
  v28 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v27)
  {
    v166 = v14;
    if (!v28)
    {
      goto LABEL_80;
    }

    v46 = v16;
    v47 = v153;
    (*(*v28 + 896))();
    sub_100A49D68(v47 + *(v154 + 20), v20, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v47, type metadata accessor for CRLWPShapeItemCRDTData);
    v49 = v150;
    v48 = v151;
    v50 = v26;
    (*(v150 + 16))(v26, &v20[*(v18 + 20)], v151);
    sub_100A47694(v20, type metadata accessor for CRLWPStorageCRDTData);
    CRAttributedString.attributes(at:effectiveRange:)();
    sub_1005B981C(&qword_101A0DB10);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10146C6B0;
    __chkstk_darwin(v51);
    *(&v148 - 4) = &type metadata for CRLWPFontSizeAttribute;
    v52 = sub_10082465C();
    v53 = v161;
    *(&v148 - 3) = v52;
    *(&v148 - 2) = v53;
    swift_getKeyPath();
    sub_1008246B0();

    v54 = v166;
    CRAttributedString.Attributes.subscript.getter();

    v55 = v208[0];
    v56 = BYTE4(v208[0]);
    *(v51 + 32) = 0;
    *(v51 + 40) = 0;
    *(v51 + 48) = v55;
    *(v51 + 52) = v56;
    sub_10079B778(v51);
    v155[1](v46, v54);
    (*(v49 + 8))(v50, v48);
LABEL_13:
    v166 = v210;
    v57 = v164;
    v165 = *(v210 + 2);
    if (!v165)
    {
    }

    v58 = 0;
    v59 = &v152[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
    v163 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
    for (i = v166 + 52; ; i += 24)
    {
      if (v58 >= *(v166 + 2))
      {
        __break(1u);
        goto LABEL_69;
      }

      v62 = *(i - 20);
      v63 = *(i - 12);
      if (*i)
      {
        break;
      }

      if (__OFSUB__(v63, v62))
      {
        goto LABEL_70;
      }

      v82 = *(i - 1);
      v83 = [objc_opt_self() valueWithRange:{v62, v63 - v62}];
      v84 = objc_allocWithZone(NSNumber);
      LODWORD(v85) = v82;
      v86 = [v84 initWithFloat:v85];
      if (v86)
      {
        v87 = v86;
        v88 = *v57;
        if ((*v57 & 0xC000000000000001) != 0)
        {
          if (v88 < 0)
          {
            v89 = *v57;
          }

          else
          {
            v89 = v88 & 0xFFFFFFFFFFFFFF8;
          }

          v90 = __CocoaDictionary.count.getter();
          if (__OFADD__(v90, 1))
          {
            goto LABEL_74;
          }

          *v57 = sub_100E8D950(v89, v90 + 1);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v208[0] = *v57;
        v92 = *&v208[0];
        v93 = sub_1007C8EE4(v83);
        v95 = *(v92 + 16);
        v96 = (v94 & 1) == 0;
        v97 = __OFADD__(v95, v96);
        v98 = v95 + v96;
        if (v97)
        {
          goto LABEL_72;
        }

        v99 = v94;
        if (*(v92 + 24) < v98)
        {
          sub_100A91CB0(v98, isUniquelyReferenced_nonNull_native);
          v93 = sub_1007C8EE4(v83);
          if ((v99 & 1) != (v100 & 1))
          {
            goto LABEL_81;
          }

          goto LABEL_37;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_37:
          v121 = *&v208[0];
          if (v99)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v143 = v93;
          sub_100AA94AC();
          v93 = v143;
          v121 = *&v208[0];
          if (v99)
          {
            goto LABEL_60;
          }
        }

        v121[(v93 >> 6) + 8] |= 1 << v93;
        *(v121[6] + 8 * v93) = v83;
        *(v121[7] + 8 * v93) = v87;
        v122 = v121[2];
        v97 = __OFADD__(v122, 1);
        v123 = v122 + 1;
        if (v97)
        {
          goto LABEL_76;
        }

        goto LABEL_65;
      }

LABEL_15:
      v61 = sub_1010F6108(v83);

LABEL_16:
      if (v165 == ++v58)
      {
      }
    }

    v64 = *(v59 + 13);
    v65 = *(v59 + 11);
    v204 = *(v59 + 12);
    v205 = v64;
    v66 = *(v59 + 13);
    v206 = *(v59 + 14);
    v67 = *(v59 + 9);
    v68 = *(v59 + 7);
    v200 = *(v59 + 8);
    v201 = v67;
    v69 = *(v59 + 9);
    v70 = *(v59 + 11);
    v202 = *(v59 + 10);
    v203 = v70;
    v71 = *(v59 + 5);
    v72 = *(v59 + 3);
    v196 = *(v59 + 4);
    v197 = v71;
    v73 = *(v59 + 5);
    v74 = *(v59 + 7);
    v198 = *(v59 + 6);
    v199 = v74;
    v75 = *(v59 + 1);
    v192 = *v59;
    v193 = v75;
    v76 = *(v59 + 3);
    v78 = *v59;
    v77 = *(v59 + 1);
    v194 = *(v59 + 2);
    v195 = v76;
    v208[12] = v204;
    v208[13] = v66;
    v208[14] = *(v59 + 14);
    v208[8] = v200;
    v208[9] = v69;
    v208[10] = v202;
    v208[11] = v65;
    v208[4] = v196;
    v208[5] = v73;
    v208[6] = v198;
    v208[7] = v68;
    v208[0] = v78;
    v208[1] = v77;
    v207 = *(v59 + 30);
    v209 = *(v59 + 30);
    v208[2] = v194;
    v208[3] = v72;
    if (sub_100695050(v208) == 1)
    {
      v79 = *&v152[v163];
      if (!v79)
      {
        goto LABEL_78;
      }

      v80 = v153;
      (*(*v79 + 896))();
      sub_1005B981C(&unk_101A095A0);
      CRRegister.wrappedValue.getter();
      sub_100A47694(v80, type metadata accessor for CRLWPShapeItemCRDTData);
      v181 = v167[12];
      v182 = v167[13];
      v183 = v167[14];
      v184 = v168;
      v177 = v167[8];
      v178 = v167[9];
      v179 = v167[10];
      v180 = v167[11];
      v173 = v167[4];
      v174 = v167[5];
      v175 = v167[6];
      v176 = v167[7];
      v169 = v167[0];
      v170 = v167[1];
      v171 = v167[2];
      v172 = v167[3];
      if (sub_100695050(&v169) == 1)
      {
        v81 = 18.0;
        goto LABEL_46;
      }

      v117 = v184;
      v116 = v183;
      v118 = BYTE8(v183);
      v114 = v182;
      v115 = BYTE8(v182);
      v112 = v181;
      v113 = BYTE8(v181);
      v110 = v180;
      v111 = BYTE8(v180);
      v108 = v172;
      v109 = BYTE8(v172);
      v106 = v171;
      v107 = BYTE8(v171);
      v105 = BYTE10(v170);
      v104 = BYTE9(v170);
      v103 = *(&v170 + 1);
      v119 = BYTE8(v170);
      v101 = v169;
      v102 = v170;
      v120 = &v169;
    }

    else
    {
      v101 = v192;
      v102 = v193;
      v103 = *(&v193 + 1);
      v104 = BYTE9(v193);
      v105 = BYTE10(v193);
      v106 = v194;
      v107 = BYTE8(v194);
      v108 = v195;
      v109 = BYTE8(v195);
      v110 = v203;
      v111 = BYTE8(v203);
      v112 = v204;
      v113 = BYTE8(v204);
      v114 = v205;
      v115 = BYTE8(v205);
      v116 = v206;
      v117 = v207;
      v118 = BYTE8(v206);
      v119 = BYTE8(v193);
      v120 = &v192;
    }

    v124 = v120[9];
    v189 = v120[8];
    v190 = v124;
    v191 = v120[10];
    v125 = v120[5];
    v185 = v120[4];
    v186 = v125;
    v126 = v120[7];
    v187 = v120[6];
    v188 = v126;
    v169 = v101;
    LOBYTE(v170) = v102;
    *(&v170 + 1) = v103;
    BYTE8(v170) = v119 & 1;
    BYTE9(v170) = v104;
    BYTE10(v170) = v105;
    *&v171 = v106;
    BYTE8(v171) = v107;
    *&v172 = v108;
    BYTE8(v172) = v109;
    v177 = v189;
    v178 = v190;
    v179 = v191;
    v173 = v185;
    v174 = v125;
    v175 = v187;
    v176 = v126;
    *&v180 = v110;
    BYTE8(v180) = v111;
    *&v181 = v112;
    BYTE8(v181) = v113;
    *&v182 = v114;
    BYTE8(v182) = v115;
    *&v183 = v116;
    BYTE8(v183) = v118 & 1;
    v184 = v117;
    if (v119)
    {
      v81 = 18.0;
    }

    else
    {
      v81 = v103;
    }

    sub_10000BE14(&v192, v167, &unk_101A0D830);
    sub_10081852C(&v169);
LABEL_46:
    if (__OFSUB__(v63, v62))
    {
      goto LABEL_71;
    }

    v83 = [objc_opt_self() valueWithRange:{v62, v63 - v62}];
    v127 = objc_allocWithZone(NSNumber);
    *&v128 = v81;
    v129 = [v127 initWithFloat:v128];
    if (v129)
    {
      v87 = v129;
      v130 = *v57;
      if ((*v57 & 0xC000000000000001) != 0)
      {
        if (v130 < 0)
        {
          v131 = *v57;
        }

        else
        {
          v131 = v130 & 0xFFFFFFFFFFFFFF8;
        }

        v132 = __CocoaDictionary.count.getter();
        if (__OFADD__(v132, 1))
        {
          goto LABEL_75;
        }

        *v57 = sub_100E8D950(v131, v132 + 1);
      }

      v133 = swift_isUniquelyReferenced_nonNull_native();
      *&v169 = *v57;
      v134 = v169;
      v93 = sub_1007C8EE4(v83);
      v136 = *(v134 + 16);
      v137 = (v135 & 1) == 0;
      v97 = __OFADD__(v136, v137);
      v138 = v136 + v137;
      if (v97)
      {
        goto LABEL_73;
      }

      v139 = v135;
      if (*(v134 + 24) >= v138)
      {
        if (v133)
        {
          goto LABEL_59;
        }

        v144 = v93;
        sub_100AA94AC();
        v93 = v144;
        v121 = v169;
        if ((v139 & 1) == 0)
        {
          goto LABEL_64;
        }

LABEL_60:
        v141 = v121[7];
        v142 = *(v141 + 8 * v93);
        *(v141 + 8 * v93) = v87;
      }

      else
      {
        sub_100A91CB0(v138, v133);
        v93 = sub_1007C8EE4(v83);
        if ((v139 & 1) != (v140 & 1))
        {
          goto LABEL_81;
        }

LABEL_59:
        v121 = v169;
        if (v139)
        {
          goto LABEL_60;
        }

LABEL_64:
        v121[(v93 >> 6) + 8] |= 1 << v93;
        *(v121[6] + 8 * v93) = v83;
        *(v121[7] + 8 * v93) = v87;
        v145 = v121[2];
        v97 = __OFADD__(v145, 1);
        v123 = v145 + 1;
        if (v97)
        {
          goto LABEL_77;
        }

LABEL_65:
        v121[2] = v123;
        v146 = v83;
      }

      v57 = v164;
      *v164 = v121;

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v28)
  {
    v29 = v153;
    (*(*v28 + 896))();
    sub_100A49D68(v29 + *(v154 + 20), v20, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v29, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v150 + 16))(v149, v20, v151);
    sub_100A47694(v20, type metadata accessor for CRLWPStorageCRDTData);
    v30 = v157;
    CRAttributedString.subscript.getter();
    v31 = v159;
    CRAttributedString.Substring.runs.getter();
    (*(v156 + 8))(v30, v31);
    CRAttributedString.Runs.next()();
    v159 = *(v165 + 48);
    v160 = v165 + 48;
    if ((v159)(v11, 1, v6) != 1)
    {
      v157 = *(v165 + 32);
      v32 = _swiftEmptyArrayStorage;
      v165 += 32;
      v155 = (v165 - 24);
      v156 = xmmword_10146C6B0;
      v158 = v11;
      while (1)
      {
        (v157)(v8, v11, v6);
        sub_1005B981C(&qword_101A0DB10);
        v33 = swift_allocObject();
        *(v33 + 16) = v156;
        v34 = CRAttributedString.Runs.Run.range.getter();
        v166 = v35;
        __chkstk_darwin(v34);
        *(&v148 - 4) = &type metadata for CRLWPFontSizeAttribute;
        v36 = sub_10082465C();
        v37 = v161;
        *(&v148 - 3) = v36;
        *(&v148 - 2) = v37;
        swift_getKeyPath();
        sub_1008246B0();

        CRAttributedString.Runs.Run.subscript.getter();

        *(v33 + 32) = v34;
        v38 = v208[0];
        v39 = BYTE4(v208[0]);
        *(v33 + 40) = v166;
        *(v33 + 48) = v38;
        *(v33 + 52) = v39;
        v40 = *(v32 + 2);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        if (!v41 || (v42 = *(v32 + 3) >> 1, v42 <= v40))
        {
          v32 = sub_100B382AC(v41, v40 + 1, 1, v32);
          v42 = *(v32 + 3) >> 1;
        }

        v43 = *(v32 + 2);
        v11 = v158;
        if (v42 <= v43)
        {
          break;
        }

        v44 = *(v33 + 32);
        v45 = &v32[24 * v43];
        *(v45 + 6) = *(v33 + 48);
        *(v45 + 2) = v44;

        ++*(v32 + 2);
        v210 = v32;
        (*v155)(v8, v6);
        CRAttributedString.Runs.next()();
        if ((v159)(v11, 1, v6) == 1)
        {
          goto LABEL_10;
        }
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

LABEL_10:
    (*(v148 + 8))(v162, v163);
    sub_100A2825C();
    (*(v150 + 8))(v149, v151);
    goto LABEL_13;
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  sub_100006370(0, &qword_101A04270);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100A2197C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v90 = a4;
  v93 = a2;
  v94 = a3;
  v88 = sub_1005B981C(&qword_101A06188);
  __chkstk_darwin(v88);
  v87 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v86 - v8;
  v9 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v9);
  v89 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = &v86 - v12;
  v13 = sub_1005B981C(&unk_1019FFD10);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v86 - v15;
  v17 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v17);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CRLWPStorageCRDTData(0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = _swiftEmptyArrayStorage;
  v24 = *(v4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v24)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    return;
  }

  (*(*v24 + 896))(v21);
  sub_100A49D68(&v19[*(v17 + 5)], v23, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v19, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v14 + 16))(v16, v23, v13);
  sub_100A47694(v23, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.count.getter();
  (*(v14 + 8))(v16, v13);
  if (v25 >= (v93 & ~(v93 >> 63)))
  {
    v26 = v93 & ~(v93 >> 63);
  }

  else
  {
    v26 = v25;
  }

  v27 = v94 & ~(v94 >> 63);
  if (v25 >= v27)
  {
    v28 = v94 & ~(v94 >> 63);
  }

  else
  {
    v28 = v25;
  }

  v93 = v28;
  v94 = v26;
  if (v27 < v26)
  {
    __break(1u);
LABEL_47:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_32;
  }

  v23 = v92;
  *v92 = _swiftEmptySetSingleton;
  v86 = sub_10068D144();
  CRAttributedString.Attributes.init()();
  v29 = *(a1 + 16);
  if (v29 != 255)
  {
    v31 = *a1;
    v30 = *(a1 + 8);
    KeyPath = swift_getKeyPath();
    v33 = sub_100A44ADC(v31, v30, v29 & 1);
    v35 = v34;
    sub_100E6DE34(&v95, 0x656D614E746E6F66, 0xE800000000000000);

    __chkstk_darwin(v36);
    *(&v86 - 4) = &type metadata for CRLWPCharacterScope;
    *(&v86 - 3) = &type metadata for CRLWPFontNameAttribute;
    *(&v86 - 2) = sub_100962324();
    *(&v86 - 1) = KeyPath;
    v23 = v92;
    swift_getKeyPath();

    v95 = sub_100CB23B4(v33, v35);
    v96 = v37;
    v97 = 0;
    sub_1005B981C(qword_101A0CF60);
    sub_1009623E4();
    CRAttributedString.Attributes.subscript.setter();
  }

  v38 = *(a1 + 24);
  if ((v38 & 1) == 0)
  {
    v39 = *(a1 + 20);
    v40 = swift_getKeyPath();
    sub_100E6DE34(&v95, 0x657A6953746E6F66, 0xE800000000000000);

    __chkstk_darwin(v41);
    *(&v86 - 4) = &type metadata for CRLWPCharacterScope;
    *(&v86 - 3) = &type metadata for CRLWPFontSizeAttribute;
    *(&v86 - 2) = sub_10082465C();
    *(&v86 - 1) = v40;
    v23 = v92;
    swift_getKeyPath();
    LODWORD(v95) = v39;
    BYTE4(v95) = v38;
    sub_1005B981C(qword_101A0CF60);
    sub_1008246B0();
    CRAttributedString.Attributes.subscript.setter();
  }

  v42 = *(a1 + 25);
  if (v42 != 2)
  {
    v43 = swift_getKeyPath();
    sub_100E6DE34(&v95, 1684828002, 0xE400000000000000);

    __chkstk_darwin(v44);
    *(&v86 - 4) = &type metadata for CRLWPCharacterScope;
    *(&v86 - 3) = &type metadata for CRLWPFontBoldAttribute;
    *(&v86 - 2) = sub_1008244A8();
    *(&v86 - 1) = v43;
    swift_getKeyPath();
    LOBYTE(v95) = v42;
    sub_1005B981C(qword_101A0CF60);
    sub_1008244FC();
    CRAttributedString.Attributes.subscript.setter();
  }

  v45 = *(a1 + 26);
  if (v45 != 2)
  {
    v46 = swift_getKeyPath();
    sub_100E6DE34(&v95, 0x63696C617469, 0xE600000000000000);

    __chkstk_darwin(v47);
    *(&v86 - 4) = &type metadata for CRLWPCharacterScope;
    *(&v86 - 3) = &type metadata for CRLWPFontItalicAttribute;
    *(&v86 - 2) = sub_1008245B4();
    *(&v86 - 1) = v46;
    swift_getKeyPath();
    LOBYTE(v95) = v45;
    sub_1005B981C(qword_101A0CF60);
    sub_100824608();
    CRAttributedString.Attributes.subscript.setter();
  }

  v48 = *(a1 + 40);
  if (v48 != 255)
  {
    v49 = *(a1 + 32);
    v50 = swift_getKeyPath();
    if (v48)
    {
      v49 = 0;
    }

    sub_100E6DE34(&v95, 0x6E696C7265646E75, 0xE900000000000065);

    __chkstk_darwin(v51);
    *(&v86 - 4) = &type metadata for CRLWPCharacterScope;
    *(&v86 - 3) = &type metadata for CRLWPUnderlineAttribute;
    *(&v86 - 2) = sub_100824704();
    *(&v86 - 1) = v50;
    swift_getKeyPath();
    v95 = v49;
    LOBYTE(v96) = 0;
    sub_1005B981C(qword_101A0CF60);
    sub_100824758();
    CRAttributedString.Attributes.subscript.setter();
  }

  v52 = *(a1 + 56);
  if (v52 != 255)
  {
    v53 = *(a1 + 48);
    v54 = swift_getKeyPath();
    if (v52)
    {
      v53 = 0;
    }

    sub_100E6DE34(&v95, 0x6874656B69727473, 0xED00006867756F72);

    __chkstk_darwin(v55);
    *(&v86 - 4) = &type metadata for CRLWPCharacterScope;
    *(&v86 - 3) = &type metadata for CRLWPStrikethroughAttribute;
    *(&v86 - 2) = sub_10096227C();
    *(&v86 - 1) = v54;
    swift_getKeyPath();
    v95 = v53;
    LOBYTE(v96) = 0;
    sub_1005B981C(qword_101A0CF60);
    sub_1009622D0();
    CRAttributedString.Attributes.subscript.setter();
  }

  v56 = *(a1 + 160);
  if (v56)
  {
    v57 = *(a1 + 72);
    v58 = swift_getKeyPath();
    sub_100006370(0, &qword_101A00EB0);
    v59 = *(a1 + 128);
    v102 = *(a1 + 112);
    v103 = v59;
    v104 = *(a1 + 144);
    v60 = *(a1 + 96);
    v101[0] = *(a1 + 80);
    v101[1] = v60;
    v105 = v56;
    v100 = v56;
    v99[3] = v59;
    v99[4] = v104;
    v99[0] = v101[0];
    v99[1] = v60;
    v99[2] = v102;
    sub_10074A990(v101, &v95);
    v61 = sub_1008B0490(v99);
    if (v57)
    {
      if (qword_1019F2268 != -1)
      {
        swift_once();
      }

      v62 = static OS_os_log.persistence;
      v63 = static os_log_type_t.info.getter();
      sub_100005404(v62, &_mh_execute_header, v63, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
    }

    v64 = [objc_allocWithZone(CRLColorFill) initWithColor:v61];

    sub_100E6DE34(&v95, 0x6574636172616863, 0xED00006C6C694672);

    __chkstk_darwin(v65);
    *(&v86 - 4) = &type metadata for CRLWPCharacterScope;
    *(&v86 - 3) = &type metadata for CRLWPCharacterFillAttribute;
    *(&v86 - 2) = sub_10082489C();
    *(&v86 - 1) = v58;
    swift_getKeyPath();

    sub_101247234(v64, &v95);
    sub_1005B981C(qword_101A0CF60);
    sub_1008248F0();
    CRAttributedString.Attributes.subscript.setter();
  }

  v66 = v89;
  sub_10000BE14(v23, v89, &qword_101A0D850);
  v67 = objc_allocWithZone(sub_1005B981C(&unk_101A095D0));
  v17 = v90;
  sub_100961810(v17, v94, v93, v66);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_47;
  }

LABEL_32:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v68 = *(a1 + 184);
  v69 = v91;
  if (v68 != 255)
  {
    v70 = *(a1 + 176);
    v71 = swift_getKeyPath();
    v72 = v17;
    sub_100A47008(v72, v94, v93, v71, v70, v68 & 1);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v73 = *(a1 + 216);
  if (v73 != 255)
  {
    v74 = *(a1 + 208);
    v75 = swift_getKeyPath();
    v76 = v17;
    sub_100A47274(v76, v94, v93, v75, v74, v73 & 1);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (*(a1 + 232))
  {
    sub_10000CAAC(v23, &qword_101A0D850);
    return;
  }

  v90 = *(a1 + 224);
  v77 = swift_getKeyPath();
  *v69 = _swiftEmptySetSingleton;
  v78 = v17;
  v79 = CRAttributedString.Attributes.init()();
  __chkstk_darwin(v79);
  *(&v86 - 4) = &type metadata for CRLWPParagraphScope;
  *(&v86 - 3) = &type metadata for CRLWPListStartAttribute;
  v80 = sub_1009620D8();
  *(&v86 - 2) = v80;
  *(&v86 - 1) = v77;
  v81 = swift_getKeyPath();
  if (!*&v78[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage])
  {
    goto LABEL_49;
  }

  v82 = v81;

  sub_100E6DE34(&v95, 0x726174537473696CLL, 0xE900000000000074);

  __chkstk_darwin(v83);
  *(&v86 - 4) = &type metadata for CRLWPParagraphScope;
  *(&v86 - 3) = &type metadata for CRLWPListStartAttribute;
  *(&v86 - 2) = v80;
  *(&v86 - 1) = v82;
  swift_getKeyPath();
  v95 = v90;
  LOBYTE(v96) = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_10096212C();
  CRAttributedString.Attributes.subscript.setter();
  v84 = v87;
  sub_10000BE14(v69, v87, &qword_101A06188);
  v85 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
  sub_100961C20(v78, v94, v93, v84);
  sub_10000CAAC(v69, &qword_101A06188);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10000CAAC(v92, &qword_101A0D850);
}

char *sub_100A228D4(char *result, uint64_t a2, id a3)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  result = [a3 textRangeForParagraphsInCharRange:{result, a2 - result, v3, v4}];
  v6 = __OFADD__(result, v5);
  v7 = &result[v5];
  if (v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < result)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_100A22E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100A47778();
  v7 = sub_100A405E4();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100A22EC8()
{
  sub_100A47778();
  sub_1007AB290();
  return CRValue<>.init(from:)();
}

uint64_t sub_100A22F34()
{
  sub_100A47778();
  sub_1007AB290();
  return CRValue<>.encode(to:)();
}

uint64_t sub_100A22F90(uint64_t a1)
{
  v2 = sub_100A47778();
  v3 = sub_1007AB290();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Int);
}

uint64_t sub_100A23048(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007AB290();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100A2309C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0D978);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100A40874();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 8);
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_1005B981C(&unk_101A0D940);
  sub_100A476F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
    LOBYTE(v14) = 1;
    type metadata accessor for URL();
    sub_100A40278(&qword_101A0D988, 255, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100A23318(__int128 *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  v10 = *(v1 + 8);
  v12 = *v1;
  v13 = v10;
  sub_1005B981C(&unk_101A0D940);
  CRExtensible.hash(into:)();
  v11 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  sub_10000BE14(v1 + *(v11 + 20), v9, &unk_1019F33C0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    sub_100A40278(&qword_101A00578, 255, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  String.hash(into:)();
  sub_100864DE8(a1, *(v1 + *(v11 + 28)));
}

uint64_t sub_100A23574@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1005B981C(&qword_101A0D950);
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 0;
  v12[8] = 0;
  sub_100020E58(a1, a1[3]);
  sub_100A40874();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v13 = v10;
  v14 = v24;
  type metadata accessor for URL();
  v29 = 1;
  sub_100A40278(&qword_101A0D958, 255, &type metadata accessor for URL);
  v15 = v25;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v13;
  sub_10003DFF8(v6, &v12[*(v13 + 20)], &unk_1019F33C0);
  v28 = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = &v12[*(v22 + 24)];
  *v17 = v16;
  v17[1] = v18;
  sub_1005B981C(&unk_101A0D960);
  v27 = 3;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = *(v22 + 28);
  (*(v14 + 8))(v9, v15);
  *&v12[v19] = v26;
  sub_100A49D68(v12, v23, type metadata accessor for CRLWPHyperlinkSmartFieldData);
  sub_100005070(a1);
  return sub_100A47694(v12, type metadata accessor for CRLWPHyperlinkSmartFieldData);
}

Swift::Int sub_100A2397C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101490AF8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100A23A04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101490AF8[v1]);
  return Hasher._finalize()();
}

unint64_t sub_100A23A68()
{
  v1 = 1701869940;
  v2 = 1684632949;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 7107189;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100A23AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100A47528(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100A23B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A4081C();
  v5 = sub_100A40874();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100A23B78(uint64_t a1)
{
  v2 = sub_100A40874();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100A23BB4(uint64_t a1)
{
  v2 = sub_100A40874();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100A23C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v8 - 8);
  v10 = v13 - v9;
  Hasher.init(_seed:)();
  v11 = *(v2 + 8);
  v13[1] = *v2;
  v14 = v11;
  sub_1005B981C(&unk_101A0D940);
  CRExtensible.hash(into:)();
  sub_10000BE14(v2 + *(a2 + 20), v10, &unk_1019F33C0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    sub_100A40278(&qword_101A00578, 255, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  String.hash(into:)();
  sub_100864DE8(v15, *(v2 + *(a2 + 28)));
  return Hasher._finalize()();
}

uint64_t sub_100A23EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D288, 255, type metadata accessor for CRLWPHyperlinkSmartFieldData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A23F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D288, 255, type metadata accessor for CRLWPHyperlinkSmartFieldData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A23FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100A40278(&qword_101A0D220, 255, type metadata accessor for CRLWPHyperlinkSmartFieldData);
  v7 = sub_100A40278(&qword_101A0D278, 255, type metadata accessor for CRLWPHyperlinkSmartFieldData);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100A24084(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D288, 255, type metadata accessor for CRLWPHyperlinkSmartFieldData);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100A24204(uint64_t a1)
{
  v2 = sub_100A40278(&qword_101A0D280, 255, type metadata accessor for CRLWPHyperlinkSmartFieldData);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100A242F0()
{
  sub_1005B981C(&qword_101A0DAF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10148EDC0;
  *(inited + 32) = 0x6E696C7265646E75;
  *(inited + 40) = 0xE900000000000065;
  v1 = sub_100A40C08();
  *(inited + 48) = &type metadata for CRLWPUnderlineAttribute;
  *(inited + 56) = v1;
  strcpy((inited + 64), "strikethrough");
  *(inited + 78) = -4864;
  v2 = sub_100A40D5C();
  *(inited + 80) = &type metadata for CRLWPStrikethroughAttribute;
  *(inited + 88) = v2;
  *(inited + 96) = 0x657A6953746E6F66;
  *(inited + 104) = 0xE800000000000000;
  v3 = sub_100A40484();
  *(inited + 112) = &type metadata for CRLWPFontSizeAttribute;
  *(inited + 120) = v3;
  *(inited + 128) = 0x656D614E746E6F66;
  *(inited + 136) = 0xE800000000000000;
  v4 = sub_100A40EB0();
  *(inited + 144) = &type metadata for CRLWPFontNameAttribute;
  *(inited + 152) = v4;
  strcpy((inited + 160), "characterFill");
  *(inited + 174) = -4864;
  v5 = sub_100A40FC4();
  *(inited + 176) = &type metadata for CRLWPCharacterFillAttribute;
  *(inited + 184) = v5;
  *(inited + 192) = 1684828002;
  *(inited + 200) = 0xE400000000000000;
  v6 = sub_100A40AE4();
  *(inited + 208) = &type metadata for CRLWPFontBoldAttribute;
  *(inited + 216) = v6;
  *(inited + 224) = 0x63696C617469;
  *(inited + 232) = 0xE600000000000000;
  v7 = sub_100A40B88();
  *(inited + 240) = &type metadata for CRLWPFontItalicAttribute;
  *(inited + 248) = v7;
  *(inited + 256) = 0x6C7974537473696CLL;
  *(inited + 264) = 0xE900000000000065;
  v8 = sub_100A41090();
  *(inited + 272) = &type metadata for CRLWPListStyleTypeAttribute;
  *(inited + 280) = v8;
  *(inited + 288) = 0x726174537473696CLL;
  *(inited + 296) = 0xE900000000000074;
  v9 = sub_100A411FC();
  *(inited + 304) = &type metadata for CRLWPListStartAttribute;
  *(inited + 312) = v9;
  strcpy((inited + 320), "paragraphLevel");
  *(inited + 335) = -18;
  v10 = sub_100A412A0();
  *(inited + 336) = &type metadata for CRLWPParagraphLevelAttribute;
  *(inited + 344) = v10;
  *(inited + 352) = 0x6E696C7265707968;
  *(inited + 360) = 0xE90000000000006BLL;
  v11 = sub_100A41320();
  *(inited + 368) = &type metadata for CRLWPHyperlinkAttribute;
  *(inited + 376) = v11;
  *(inited + 384) = 0xD000000000000012;
  *(inited + 392) = 0x8000000101551650;
  v12 = sub_100A414A0();
  *(inited + 400) = &type metadata for CRLWPParagraphAlignmentAttribute;
  *(inited + 408) = v12;
  *(inited + 416) = 0xD000000000000014;
  *(inited + 424) = 0x800000010157BA40;
  v13 = sub_100A415F4();
  *(inited + 432) = &type metadata for CRLWPWritingDirectionAttribute;
  *(inited + 440) = v13;
  v14 = sub_100BD7E28(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DB00);
  result = swift_arrayDestroy();
  static CRLTextAttributeScope.attributeTypes = v14;
  return result;
}

uint64_t *CRLTextAttributeScope.attributeTypes.unsafeMutableAddressor()
{
  if (qword_1019F1AC8 != -1)
  {
    swift_once();
  }

  return &static CRLTextAttributeScope.attributeTypes;
}

uint64_t static CRLTextAttributeScope.attributeTypes.getter()
{
  if (qword_1019F1AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static CRLTextAttributeScope.attributeTypes.setter(uint64_t a1)
{
  if (qword_1019F1AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static CRLTextAttributeScope.attributeTypes = a1;
}

uint64_t (*static CRLTextAttributeScope.attributeTypes.modify())()
{
  if (qword_1019F1AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

void sub_100A24798(void *a1)
{
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  swift_getKeyPath();
  v2 = a1;
  sub_100A42890(a1);
  sub_1005B981C(qword_101A0CF60);
  sub_1008244FC();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  sub_100A42F80(a1);
  sub_100824758();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  v9 = sub_100A43BEC(a1);
  LOBYTE(v10) = 0;
  sub_100962228();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  v3 = sub_100A43680(a1);
  sub_101247234(v3, &v9);
  sub_1008248F0();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  v9 = sub_100A43F70(a1);
  LOBYTE(v10) = 0;
  sub_1009624A4();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  v4 = sub_100A41EDC(a1);
  v9 = sub_100CB23B4(v4, v5);
  v10 = v6;
  v11 = 0;
  sub_1009623E4();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  sub_100A42510(a1);
  LODWORD(v9) = v7;
  BYTE4(v9) = 0;
  sub_1008246B0();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  LOBYTE(v9) = sub_100A42C08(a1) & 1;
  sub_100824608();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  v9 = 0;
  LOBYTE(v10) = 0;
  sub_100962084();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  v8 = sub_100A43300(a1);

  v9 = v8;
  LOBYTE(v10) = 0;
  sub_1009622D0();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  v9 = 0;
  LOBYTE(v10) = 0;
  sub_1009621D4();
  CRAttributedString.Attributes.subscript.setter();
  swift_getKeyPath();
  v9 = 1;
  LOBYTE(v10) = 0;
  sub_10096212C();
  CRAttributedString.Attributes.subscript.setter();
}

uint64_t sub_100A24B10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptySetSingleton;
  sub_1005B981C(&qword_101A0D850);
  sub_10068D144();
  result = CRAttributedString.Attributes.init()();
  v4 = 0;
  v74 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v72 = a1 + 64;
  v73 = v9;
  while (v8)
  {
    v10 = v4;
LABEL_14:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v74 + 48) + 8 * v14);
    sub_100064288(*(v74 + 56) + 32 * v14, v79);
    *v76 = v15;
    sub_10000BF3C(v79, &v76[8]);
    v16 = v15;
LABEL_15:
    v85[0] = *v76;
    v85[1] = *&v76[16];
    v86 = *&v76[32];
    v17 = *v76;
    if (!*v76)
    {
    }

    sub_10000BF3C((v85 + 8), &v83);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
    if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
    {

LABEL_20:
      sub_100064288(&v83, v76);
      if (swift_dynamicCast())
      {
        v23 = *&v79[0];
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        swift_getKeyPath();
        sub_100E6DE34(v76, 0x6E696C7265646E75, 0xE900000000000065);

        __chkstk_darwin(v25);
        sub_100824704();
        swift_getKeyPath();
        v9 = v73;
        *v76 = v23;
        v76[8] = 0;

        sub_1005B981C(qword_101A0CF60);
        sub_100824758();
        v5 = v72;
        goto LABEL_31;
      }

      sub_100064288(&v83, v76);
      type metadata accessor for NSUnderlineStyle(0);
      if (swift_dynamicCast())
      {
        v26 = *&v79[0];
        v27 = swift_getKeyPath();
        __chkstk_darwin(v27);
        swift_getKeyPath();
        sub_100E6DE34(v76, 0x6E696C7265646E75, 0xE900000000000065);

        __chkstk_darwin(v28);
        sub_100824704();
        v5 = v72;
        swift_getKeyPath();
        v9 = v73;
        *v76 = v26;
        v76[8] = 0;

        sub_1005B981C(qword_101A0CF60);
        sub_100824758();
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_20;
    }

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
    if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
    {

LABEL_29:
      sub_100064288(&v83, v76);
      if (swift_dynamicCast())
      {
        v34 = *&v79[0];
        v35 = swift_getKeyPath();
        __chkstk_darwin(v35);
        swift_getKeyPath();
        sub_100E6DE34(v76, 0x6874656B69727473, 0xED00006867756F72);

        __chkstk_darwin(v36);
        sub_10096227C();
        v5 = v72;
        swift_getKeyPath();
        v9 = v73;
        *v76 = v34;
        v76[8] = 0;

        sub_1005B981C(qword_101A0CF60);
        sub_1009622D0();
LABEL_31:
        CRAttributedString.Attributes.subscript.setter();
      }

LABEL_32:

      goto LABEL_33;
    }

    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_29;
    }

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
    {

      goto LABEL_38;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {
LABEL_38:
      sub_100020E58(&v83, v84);
      v42 = _bridgeAnythingToObjectiveC<A>(_:)();
      v43 = CFGetTypeID(v42);
      swift_unknownObjectRelease();
      if (v43 != CTFontGetTypeID())
      {
        goto LABEL_32;
      }

      sub_100064288(&v83, v76);
      type metadata accessor for CTFont(0);
      swift_dynamicCast();
      v44 = *&v79[0];
      SymbolicTraits = CTFontGetSymbolicTraits(*&v79[0]);
      v70 = v44;
      if ((SymbolicTraits & 2) != 0)
      {
        v46 = swift_getKeyPath();
        __chkstk_darwin(v46);
        swift_getKeyPath();
        sub_100E6DE34(v76, 1684828002, 0xE400000000000000);

        __chkstk_darwin(v47);
        sub_1008244A8();
        swift_getKeyPath();
        v76[0] = 1;
        sub_1005B981C(qword_101A0CF60);
        sub_1008244FC();
        CRAttributedString.Attributes.subscript.setter();
      }

      if (SymbolicTraits)
      {
        v48 = swift_getKeyPath();
        __chkstk_darwin(v48);
        swift_getKeyPath();
        sub_100E6DE34(v76, 0x63696C617469, 0xE600000000000000);

        __chkstk_darwin(v49);
        sub_1008245B4();
        swift_getKeyPath();
        v76[0] = 1;
        sub_1005B981C(qword_101A0CF60);
        sub_100824608();
        CRAttributedString.Attributes.subscript.setter();
      }

      v50 = swift_getKeyPath();
      __chkstk_darwin(v50);
      swift_getKeyPath();
      v51 = CTFontCopyFamilyName(v44);
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      sub_100E6DE34(v76, 0x656D614E746E6F66, 0xE800000000000000);

      __chkstk_darwin(v54);
      sub_100962324();
      swift_getKeyPath();

      *v76 = sub_100CB23B4(v69, v53);
      *&v76[8] = v55;
      v76[16] = 0;
      sub_1005B981C(qword_101A0CF60);
      sub_1009623E4();
      CRAttributedString.Attributes.subscript.setter();

      v56 = swift_getKeyPath();
      __chkstk_darwin(v56);
      swift_getKeyPath();
      Size = CTFontGetSize(v70);
      sub_100E6DE34(v76, 0x657A6953746E6F66, 0xE800000000000000);

      __chkstk_darwin(v58);
      sub_10082465C();
      swift_getKeyPath();
      *v76 = Size;
      v76[4] = 0;
      sub_1008246B0();

      CRAttributedString.Attributes.subscript.setter();

      result = sub_100005070(&v83);
      v5 = v72;
      v9 = v73;
    }

    else
    {
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;
      if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v61 == v62)
      {
      }

      else
      {
        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v63 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      sub_100064288(&v83, &v82);
      sub_100006370(0, &qword_101A11110);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_32;
      }

      v64 = v81;
      v71 = v81;
      v65 = swift_getKeyPath();
      __chkstk_darwin(v65);
      swift_getKeyPath();
      v66 = [v64 CGColor];
      v67 = [objc_allocWithZone(CRLColorFill) initWithCGColor:v66];

      sub_100E6DE34(v76, 0x6574636172616863, 0xED00006C6C694672);

      __chkstk_darwin(v68);
      sub_10082489C();
      swift_getKeyPath();
      v9 = v73;

      sub_1008B2170([v67 color], v87);

      *&v75[39] = v87[2];
      *&v75[55] = v87[3];
      *&v75[71] = v87[4];
      *&v75[87] = v88;
      *&v75[7] = v87[0];
      *&v75[23] = v87[1];
      v79[0] = *v75;
      v79[1] = *&v75[16];
      *(v80 + 15) = *&v75[79];
      v79[3] = *&v75[48];
      v80[0] = *&v75[64];
      v79[2] = *&v75[32];
      *v76 = 0;
      v76[8] = 0;
      *&v76[41] = *&v75[32];
      *&v76[57] = *&v75[48];
      *v77 = *&v75[64];
      *&v77[15] = *(v80 + 15);
      *&v76[9] = *v75;
      *&v76[25] = *&v75[16];
      v78 = _swiftEmptyDictionarySingleton;
      sub_1005B981C(qword_101A0CF60);
      sub_1008248F0();
      CRAttributedString.Attributes.subscript.setter();

LABEL_33:
      result = sub_100005070(&v83);
    }
  }

  if (v9 <= v4 + 1)
  {
    v11 = v4 + 1;
  }

  else
  {
    v11 = v9;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      v8 = 0;
      v4 = v12;
      memset(v76, 0, 40);
      goto LABEL_15;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_100A25A48(void **a1@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptySetSingleton;
  sub_1005B981C(&qword_101A0D850);
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  KeyPath = swift_getKeyPath();
  v56 = v3;
  v7 = sub_100959D4C(KeyPath, v3, v4, v5);
  v9 = v8;

  if (v9)
  {
    if (!*(v7 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    v10 = *(v7 + 32);
    sub_1000C1080(v7, 1);
    v7 = v10;
  }

  sub_100E6DE34(&v57, 0x6E696C7265646E75, 0xE900000000000065);

  __chkstk_darwin(v11);
  sub_100824704();
  swift_getKeyPath();
  v57 = v7;
  LOBYTE(v58) = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_100824758();
  CRAttributedString.Attributes.subscript.setter();
  v12 = swift_getKeyPath();
  __chkstk_darwin(v12);
  swift_getKeyPath();
  v9 = swift_getKeyPath();
  v13 = sub_10095BC20(v9, v56, v4, v5);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!*(v13 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = *(v13 + 32);
  sub_1000C1080(v13, 1);
  LOBYTE(v13) = v16;
LABEL_7:
  LOBYTE(v60) = v13 & 1;
  sub_100E6DE34(&v57, 1684828002, 0xE400000000000000);

  __chkstk_darwin(v17);
  sub_1008244A8();
  swift_getKeyPath();
  sub_1008244FC();
  CRAttributedString.Attributes.subscript.setter();
  v18 = swift_getKeyPath();
  __chkstk_darwin(v18);
  swift_getKeyPath();
  v19 = swift_getKeyPath();
  v9 = sub_100958DDC(v19, v56, v4, v5);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!*(v9 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = *(v9 + 32);
  sub_1000C1080(v9, 1);
  v9 = v22;
LABEL_10:
  sub_100E6DE34(&v57, 0x6874656B69727473, 0xED00006867756F72);

  __chkstk_darwin(v23);
  sub_10096227C();
  swift_getKeyPath();
  v57 = v9;
  LOBYTE(v58) = 0;
  sub_1009622D0();
  CRAttributedString.Attributes.subscript.setter();
  v24 = swift_getKeyPath();
  __chkstk_darwin(v24);
  swift_getKeyPath();
  v9 = swift_getKeyPath();
  v25 = sub_10095ACBC(v9, v56, v4, v5);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!*(v25 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v28 = *(v25 + 32);
  sub_1000C1080(v25, 1);
  LOBYTE(v25) = v28;
LABEL_13:
  LOBYTE(v60) = v25 & 1;
  sub_100E6DE34(&v57, 0x63696C617469, 0xE600000000000000);

  __chkstk_darwin(v29);
  sub_1008245B4();
  swift_getKeyPath();
  sub_100824608();
  CRAttributedString.Attributes.subscript.setter();
  v30 = swift_getKeyPath();
  __chkstk_darwin(v30);
  swift_getKeyPath();
  v31 = swift_getKeyPath();
  v9 = sub_10095DAD4(v31, v56, v4, v5);
  v33 = v32;
  v35 = v34;

  v55 = a1;
  if ((v35 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v9 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v37 = *(v9 + 32);
  v36 = *(v9 + 40);

  sub_100962378();
  v9 = v37;
  v33 = v36;
LABEL_16:
  sub_100E6DE34(&v57, 0x656D614E746E6F66, 0xE800000000000000);

  __chkstk_darwin(v38);
  sub_100962324();
  swift_getKeyPath();

  v57 = sub_100CB23B4(v9, v33);
  v58 = v39;
  v59 = 0;
  sub_1009623E4();
  CRAttributedString.Attributes.subscript.setter();

  v40 = swift_getKeyPath();
  __chkstk_darwin(v40);
  swift_getKeyPath();
  v41 = swift_getKeyPath();
  v42 = sub_10095CB84(v41, v56, v4, v5);
  v9 = v43;

  if (v9)
  {
    if (*(v42 + 16))
    {
      v44 = v5;
      v45 = *(v42 + 32);
      sub_1000C1080(v42, 1);
      LODWORD(v42) = v45;
      goto LABEL_20;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  v44 = v5;
LABEL_20:
  v60 = v42;
  v61 = 0;
  sub_100E6DE34(&v57, 0x657A6953746E6F66, 0xE800000000000000);

  __chkstk_darwin(v46);
  sub_10082465C();
  swift_getKeyPath();
  sub_1008246B0();
  CRAttributedString.Attributes.subscript.setter();
  v47 = swift_getKeyPath();
  __chkstk_darwin(v47);
  swift_getKeyPath();
  v48 = swift_getKeyPath();
  v9 = v56;
  v4 = sub_100957838(v48, v56, v4, v44);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
LABEL_25:
    sub_100E6DE34(&v57, 0x6574636172616863, 0xED00006C6C694672);

    __chkstk_darwin(v53);
    sub_10082489C();
    swift_getKeyPath();

    sub_101247234(v4, &v57);
    sub_1008248F0();
    CRAttributedString.Attributes.subscript.setter();
    v54 = *v55;

    return;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v51 = *(v4 + 32);
LABEL_24:
    v52 = v51;
    sub_1000C10AC(v4, 1);
    v4 = v52;
    goto LABEL_25;
  }

  __break(1u);
}

void sub_100A26474(void **a1@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptySetSingleton;
  sub_1005B981C(&qword_101A06188);
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  KeyPath = swift_getKeyPath();
  v7 = sub_100955B74(KeyPath, v3, v4, v5);
  v9 = v8;

  if (v9)
  {
    if (!*(v7 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v10 = *(v7 + 32);
    sub_1000C1080(v7, 1);
    v7 = v10;
  }

  sub_100E6DE34(&v43, 0xD000000000000014, 0x800000010157BA40);

  __chkstk_darwin(v11);
  sub_100962450();
  swift_getKeyPath();
  v43 = v7;
  LOBYTE(v44) = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_1009624A4();
  CRAttributedString.Attributes.subscript.setter();
  v12 = swift_getKeyPath();
  __chkstk_darwin(v12);
  swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = sub_1009569D8(v13, v3, v4, v5);
  v16 = v15;

  v42 = a1;
  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!*(v14 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = *(v14 + 32);
  sub_1000C1080(v14, 1);
  v14 = v17;
LABEL_7:
  sub_100E6DE34(&v43, 0xD000000000000012, 0x8000000101551650);

  __chkstk_darwin(v18);
  sub_1006ACAD4();
  swift_getKeyPath();
  v43 = v14;
  LOBYTE(v44) = 0;
  sub_100962228();
  CRAttributedString.Attributes.subscript.setter();
  v19 = swift_getKeyPath();
  __chkstk_darwin(v19);
  swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = sub_100954FAC(v20, v3, v4, v5);
  v23 = v22;

  if (v23)
  {
    if (*(v21 + 16))
    {
      v24 = *(v21 + 32);
      sub_1000C1080(v21, 1);
      goto LABEL_11;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v21;
LABEL_11:
  sub_100E6DE34(&v43, 0x6C7974537473696CLL, 0xE900000000000065);

  __chkstk_darwin(v25);
  sub_100962180();
  swift_getKeyPath();
  v43 = v24;
  LOBYTE(v44) = 0;
  sub_1009621D4();
  CRAttributedString.Attributes.subscript.setter();
  v26 = swift_getKeyPath();
  __chkstk_darwin(v26);
  swift_getKeyPath();
  v27 = swift_getKeyPath();
  v28 = sub_1009543F8(v27, v3, v4, v5);
  v30 = v29;

  if (v30)
  {
    if (*(v28 + 16))
    {
      v31 = *(v28 + 32);
      sub_1000C1080(v28, 1);
      v28 = v31;
      goto LABEL_14;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_14:
  sub_100E6DE34(&v43, 0x726174537473696CLL, 0xE900000000000074);

  __chkstk_darwin(v32);
  sub_1009620D8();
  swift_getKeyPath();
  v43 = v28;
  LOBYTE(v44) = 0;
  sub_10096212C();
  CRAttributedString.Attributes.subscript.setter();
  v33 = swift_getKeyPath();
  __chkstk_darwin(v33);
  swift_getKeyPath();
  v34 = swift_getKeyPath();
  sub_10095EAFC(v34, v3, v4, v5);
  v36 = v35;
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_17:
    sub_100E6DE34(&v43, 0x7061726761726170, 0xEE006C6576654C68);

    __chkstk_darwin(v40);
    sub_100962030();
    swift_getKeyPath();
    v43 = v36;
    LOBYTE(v44) = 0;
    sub_100962084();

    CRAttributedString.Attributes.subscript.setter();
    v41 = *v42;

    return;
  }

  if (*(v36 + 16))
  {
    v39 = *(v36 + 32);
    sub_1000C1080(v36, 1);
    v36 = v39;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
}

void sub_100A26C00(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = _swiftEmptySetSingleton;
  sub_1005B981C(&qword_101A06188);
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  if (*(a1 + 16) && (v3 = sub_10006E4C8(NSParagraphStyleAttributeName), (v4 & 1) != 0))
  {
    sub_100064288(*(a1 + 56) + 32 * v3, &v34);

    sub_100006370(0, &qword_101A0D858);
    if (swift_dynamicCast())
    {
      v5 = v33;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      swift_getKeyPath();
      v7 = sub_1007260E4([v33 baseWritingDirection]);
      sub_100E6DE34(&v34, 0xD000000000000014, 0x800000010157BA40);

      __chkstk_darwin(v8);
      sub_100962450();
      swift_getKeyPath();
      v34 = v7;
      LOBYTE(v35) = 0;
      sub_1005B981C(qword_101A0CF60);
      sub_1009624A4();
      CRAttributedString.Attributes.subscript.setter();
      v9 = swift_getKeyPath();
      __chkstk_darwin(v9);
      swift_getKeyPath();
      v10 = sub_100283200([v33 alignment]);
      sub_100E6DE34(&v34, 0xD000000000000012, 0x8000000101551650);

      __chkstk_darwin(v11);
      sub_1006ACAD4();
      swift_getKeyPath();
      v34 = v10;
      LOBYTE(v35) = 0;
      sub_100962228();
      CRAttributedString.Attributes.subscript.setter();
      v12 = [v33 textLists];
      sub_100006370(0, &unk_101A0D860);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v13 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
        if (v14)
        {
LABEL_6:
          v15 = __OFSUB__(v14, 1);
          v16 = v14 - 1;
          if (v15)
          {
            __break(1u);
          }

          else
          {
            v32 = v33;
            if ((v13 & 0xC000000000000001) == 0)
            {
              if ((v16 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_23;
              }

              if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_25:
                __break(1u);
                return;
              }

              v17 = *(v13 + 8 * v16 + 32);
LABEL_11:
              v18 = v17;

              v19 = swift_getKeyPath();
              __chkstk_darwin(v19);
              swift_getKeyPath();
              v20 = [v18 markerFormat];
              v21 = sub_10107649C();

              sub_100E6DE34(&v34, 0x6C7974537473696CLL, 0xE900000000000065);

              __chkstk_darwin(v22);
              sub_100962180();
              swift_getKeyPath();
              v34 = v21;
              LOBYTE(v35) = 0;
              sub_1009621D4();
              CRAttributedString.Attributes.subscript.setter();
              v23 = swift_getKeyPath();
              __chkstk_darwin(v23);
              swift_getKeyPath();
              v31 = v18;
              v24 = [v18 startingItemNumber];
              sub_100E6DE34(&v34, 0x726174537473696CLL, 0xE900000000000074);

              __chkstk_darwin(v25);
              sub_1009620D8();
              swift_getKeyPath();
              v34 = v24;
              LOBYTE(v35) = 0;
              sub_10096212C();
              CRAttributedString.Attributes.subscript.setter();
              v26 = swift_getKeyPath();
              __chkstk_darwin(v26);
              swift_getKeyPath();
              v5 = v32;
              v27 = [v32 textLists];
              v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (!(v28 >> 62))
              {
                v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

                if (!__OFSUB__(v29, 1))
                {
                  sub_100E6DE34(&v34, 0x7061726761726170, 0xEE006C6576654C68);

                  __chkstk_darwin(v30);
                  sub_100962030();
                  swift_getKeyPath();
                  v34 = v29 - 1;
                  LOBYTE(v35) = 0;
                  sub_100962084();

                  CRAttributedString.Attributes.subscript.setter();

LABEL_19:
                  return;
                }

                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              v29 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_13;
            }
          }

          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_11;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
  }
}

uint64_t sub_100A273B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = sub_1005B981C(&qword_101A06188);
  __chkstk_darwin(v24);
  v8 = &v21 - v7;
  v9 = sub_1005B981C(qword_101A0CF60);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_1005B981C(&qword_101A0D850);
  result = __chkstk_darwin(v13);
  v16 = &v21 - v15;
  if (*(a1 + 16))
  {

    sub_100A24B10(v17, v16);
    v18 = *(v13 + 36);
    v22 = *(v10 + 16);
    v22(v12, &v16[v18], v9);
    sub_10000CAAC(v16, &qword_101A0D850);
    sub_1005B981C(&unk_1019FFD10);
    CRAttributedString.addAttributes(_:range:)();
    v21 = a3;
    v19 = *(v10 + 8);
    v19(v12, v9);

    sub_100A26C00(v20, v8);
    v22(v12, &v8[*(v24 + 36)], v9);
    sub_10000CAAC(v8, &qword_101A06188);
    CRAttributedString.addAttributes(_:range:)();
    return (v19)(v12, v9);
  }

  return result;
}

uint64_t sub_100A27644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v36 = a1;
  v37 = a2;
  v34 = *(a3 - 8);
  __chkstk_darwin(a1);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v31 = &v30 - v7;
  v8 = type metadata accessor for CRLWPAttributeValue();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  v16 = __chkstk_darwin(TupleTypeMetadata2);
  v18 = &v30 - v17;
  v20 = *(v19 + 48);
  v21 = *(v9 + 16);
  v21(&v30 - v17, v36, v8, v16);
  (v21)(&v18[v20], v37, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v21)(v14, v18, v8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = v34;
      v24 = *(v34 + 32);
      v25 = v31;
      v24(v31, v14, a3);
      v26 = &v18[v20];
      v27 = v32;
      v24(v32, v26, a3);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v23 + 8);
      v28(v27, a3);
      v28(v25, a3);
      goto LABEL_9;
    }

    (*(v34 + 8))(v14, a3);
    goto LABEL_7;
  }

  (v21)(v11, v18, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_7:
    v22 = 0;
    v9 = v33;
    v8 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v22 = static Array<A>.== infix(_:_:)();

LABEL_9:
  (*(v9 + 8))(v18, v8);
  return v22 & 1;
}

void sub_100A27A0C()
{
  v1 = *v0;
  v40 = *(*v0 + 2);
  if (v40 < 2)
  {
    return;
  }

  v35 = v0;
  v2 = 0;
  v41 = _swiftEmptyArrayStorage;
  v3 = (v1 + 48);
  v39 = *v0;
  while (v2 < *(v1 + 2))
  {
    v5 = *(v3 - 2);
    v4 = *(v3 - 1);
    v6 = *v3;
    v7 = v41;
    if (!*(v41 + 2))
    {
      sub_1005B981C(&qword_101A0DA40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 32) = v5;
      *(inited + 40) = v4;
      *(inited + 48) = v6;
      v25 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v27 = *(v41 + 3), v27 <= 1))
      {
        v7 = sub_100B36788(isUniquelyReferenced_nonNull_native, 1, 1, v41);
        v27 = *(v7 + 3);
      }

      if (*(v7 + 2) >= v27 >> 1)
      {
        goto LABEL_47;
      }

      swift_arrayInitWithCopy();

      v28 = *(v7 + 2) + 1;
      goto LABEL_3;
    }

    v8 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = *(v41 + 2);
      if (!v9)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v7 = sub_10113CE1C(v41);
      v9 = *(v7 + 2);
      if (!v9)
      {
        goto LABEL_41;
      }
    }

    v10 = v9 - 1;
    v11 = &v7[24 * v9];
    v13 = *(v11 + 1);
    v12 = *(v11 + 2);
    v14 = *(v11 + 3);
    *(v7 + 2) = v10;
    v41 = v7;
    if (__OFSUB__(v12, v13))
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v4, v5))
    {
      goto LABEL_43;
    }

    v42.location = v13;
    v43.location = v5;
    v42.length = v12 - v13;
    v43.length = v4 - v5;
    v15 = sub_1002BC848(v42, v43, 1);
    if (v15 == NSNotFound.getter())
    {
      goto LABEL_27;
    }

    v38 = v4;
    type metadata accessor for CRLWPCharacterStyle();
    v37 = v8;
    v16 = v8;
    v17 = v14;
    v18 = static NSObject.== infix(_:_:)();
    v36 = v16;

    if ((v18 & 1) == 0)
    {

      v8 = v37;
      v4 = v38;
LABEL_27:
      sub_1005B981C(&qword_101A0DA40);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_10146BDE0;
      *(v29 + 32) = v13;
      *(v29 + 40) = v12;
      *(v29 + 48) = v14;
      *(v29 + 56) = v5;
      *(v29 + 64) = v4;
      *(v29 + 72) = v8;
      v30 = *(v7 + 2);
      v31 = v30 + 2;
      if (__OFADD__(v30, 2))
      {
        goto LABEL_44;
      }

      v32 = *(v7 + 3) >> 1;
      if (v32 < v31)
      {
        if (v30 <= v31)
        {
          v30 += 2;
        }

        v7 = sub_100B36788(1, v30, 1, v7);
        v30 = *(v7 + 2);
        v32 = *(v7 + 3) >> 1;
      }

      v1 = v39;
      if ((v32 - v30) < 2)
      {
        goto LABEL_45;
      }

      swift_arrayInitWithCopy();

      v33 = *(v7 + 2);
      v34 = __OFADD__(v33, 2);
      v28 = v33 + 2;
      if (v34)
      {
        goto LABEL_46;
      }

LABEL_3:
      *(v7 + 2) = v28;
      v41 = v7;
      goto LABEL_4;
    }

    v19 = v17;
    if (v5 >= v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = v5;
    }

    if (v38 <= v12)
    {
      v21 = v12;
    }

    else
    {
      v21 = v38;
    }

    if (v21 < v20)
    {
      goto LABEL_48;
    }

    sub_1005B981C(&qword_101A0DA40);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_10146C6B0;
    *(v22 + 32) = v20;
    *(v22 + 40) = v21;
    *(v22 + 48) = v19;
    v23 = v19;
    sub_100799D28(v22);

    v1 = v39;
LABEL_4:
    ++v2;
    v3 += 3;
    if (v40 == v2)
    {

      *v35 = v41;
      return;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_100A27DD0()
{
  v1 = sub_1005B981C(&unk_101A0DA88);
  __chkstk_darwin(v1 - 8);
  v34 = (&v26 - v2);
  v37 = sub_1005B981C(&qword_101A000C0);
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v9 = (&v26 - v8);
  v10 = *v0;
  v36 = *(*v0 + 16);
  if (v36 >= 2)
  {
    v32 = v7;
    v27 = v0;
    v11 = 0;
    v38 = _swiftEmptyArrayStorage;
    v30 = (v3 + 48);
    v35 = xmmword_10146C6B0;
    v28 = xmmword_10146BDE0;
    v33 = v3;
    v31 = v10;
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = *(v3 + 72);
      sub_10000BE14(v10 + v13 + v14 * v11, v9, &qword_101A000C0);
      v15 = v38;
      if (v38[2])
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v16 = v15[2];
          if (!v16)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v15 = sub_10113CE30(v15);
          v16 = v15[2];
          if (!v16)
          {
LABEL_18:
            __break(1u);
LABEL_19:

            *v27 = v38;
            return;
          }
        }

        v17 = v16 - 1;
        v15[2] = v17;
        v38 = v15;
        v18 = v32;
        sub_10003DFF8(v15 + v13 + v17 * v14, v32, &qword_101A000C0);
        v19 = v34;
        sub_100A28604(v9, v34);
        if ((*v30)(v19, 1, v37) == 1)
        {
          sub_10000CAAC(v19, &unk_101A0DA88);
          sub_1005B981C(&qword_101A0DA78);
          v12 = swift_allocObject();
          *(v12 + 16) = v28;
          sub_10000BE14(v18, v12 + v13, &qword_101A000C0);
          sub_10000BE14(v9, v12 + v13 + v14, &qword_101A000C0);
          sub_100799D48(v12);
        }

        else
        {
          v20 = v19;
          v21 = v29;
          sub_10003DFF8(v20, v29, &qword_101A000C0);
          sub_1005B981C(&qword_101A0DA78);
          v22 = swift_allocObject();
          *(v22 + 16) = v35;
          sub_10000BE14(v21, v22 + v13, &qword_101A000C0);
          sub_100799D48(v22);
          sub_10000CAAC(v21, &qword_101A000C0);
        }

        sub_10000CAAC(v18, &qword_101A000C0);
        v3 = v33;
        v10 = v31;
      }

      else
      {
        sub_1005B981C(&qword_101A0DA78);
        v23 = swift_allocObject();
        *(v23 + 16) = v35;
        sub_10000BE14(v9, v23 + v13, &qword_101A000C0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v25 = v15[3], v25 <= 1))
        {
          v15 = sub_100B367A4(isUniquelyReferenced_nonNull_native, 1, 1, v15);
          v25 = v15[3];
        }

        if (v15[2] >= v25 >> 1)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        ++v15[2];
        v38 = v15;
      }

      ++v11;
      sub_10000CAAC(v9, &qword_101A000C0);
      if (v36 == v11)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_100A2825C()
{
  v1 = *(*v0 + 2);
  if (v1 < 2)
  {
    return;
  }

  v40 = v0;
  v2 = (*v0 + 52);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = *(v2 - 5);
    v8 = *(v2 - 3);
    v9 = *(v2 - 1);
    v10 = *v2;
    if (!*(v3 + 2))
    {
      sub_1005B981C(&qword_101A0DB10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 32) = v7;
      *(inited + 40) = v8;
      *(inited + 48) = v9;
      *(inited + 52) = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v31 = *(v3 + 3), v31 <= 1))
      {
        v3 = sub_100B382AC(isUniquelyReferenced_nonNull_native, 1, 1, v3);
        v31 = *(v3 + 3);
      }

      v32 = *(v3 + 2);
      if (v32 >= v31 >> 1)
      {
        goto LABEL_51;
      }

      v33 = *(inited + 32);
      v34 = &v3[24 * v32];
      *(v34 + 6) = *(inited + 48);
      *(v34 + 2) = v33;
      goto LABEL_4;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    v11 = *(v3 + 2);
    if (!v11)
    {
      goto LABEL_45;
    }

LABEL_9:
    v12 = v11 - 1;
    v13 = &v3[24 * v11];
    v15 = *(v13 + 1);
    v14 = *(v13 + 2);
    v42 = *(v13 + 6);
    v16 = v13[28];
    *(v3 + 2) = v12;
    if (__OFSUB__(v14, v15))
    {
      goto LABEL_46;
    }

    if (__OFSUB__(v8, v7))
    {
      goto LABEL_47;
    }

    v41 = v1;
    v17 = v10;
    v43.location = v15;
    v44.location = v7;
    v43.length = v14 - v15;
    v44.length = v8 - v7;
    v18 = sub_1002BC848(v43, v44, 1);
    if (v18 != NSNotFound.getter())
    {
      if (v16)
      {
        if (v17)
        {
          goto LABEL_28;
        }
      }

      else if ((v17 & 1) == 0 && v42 == v9)
      {
LABEL_28:
        if (v7 >= v15)
        {
          v7 = v15;
        }

        if (v8 > v14)
        {
          v14 = v8;
        }

        if (v14 < v7)
        {
          goto LABEL_52;
        }

        sub_1005B981C(&qword_101A0DB10);
        v35 = swift_initStackObject();
        *(v35 + 16) = xmmword_10146C6B0;
        *(v35 + 32) = v7;
        v36 = v35 + 32;
        *(v35 + 40) = v14;
        *(v35 + 48) = v42;
        *(v35 + 52) = v16;
        v37 = *(v3 + 2);
        v38 = *(v3 + 3) >> 1;
        if (v38 <= v37)
        {
          v3 = sub_100B382AC(1, v37 + 1, 1, v3);
          v37 = *(v3 + 2);
          v38 = *(v3 + 3) >> 1;
        }

        v1 = v41;
        if (v38 <= v37)
        {
          goto LABEL_53;
        }

        v4 = *v36;
        v5 = &v3[24 * v37];
        *(v5 + 6) = *(v36 + 16);
        *(v5 + 2) = v4;
LABEL_4:

        v6 = *(v3 + 2) + 1;
        goto LABEL_5;
      }
    }

    sub_1005B981C(&qword_101A0DB10);
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_10146BDE0;
    *(v19 + 32) = v15;
    v20 = (v19 + 32);
    *(v19 + 40) = v14;
    *(v19 + 48) = v42;
    *(v19 + 52) = v16;
    *(v19 + 56) = v7;
    *(v19 + 64) = v8;
    *(v19 + 72) = v9;
    *(v19 + 76) = v17;
    v21 = *(v3 + 2);
    v22 = v21 + 2;
    if (__OFADD__(v21, 2))
    {
      goto LABEL_48;
    }

    v23 = *(v3 + 3) >> 1;
    if (v23 < v22)
    {
      if (v21 <= v22)
      {
        v39 = v21 + 2;
      }

      else
      {
        v39 = *(v3 + 2);
      }

      v3 = sub_100B382AC(1, v39, 1, v3);
      v21 = *(v3 + 2);
      v23 = *(v3 + 3) >> 1;
    }

    v1 = v41;
    if ((v23 - v21) < 2)
    {
      goto LABEL_49;
    }

    v24 = &v3[24 * v21];
    v25 = *v20;
    v26 = v20[2];
    *(v24 + 3) = v20[1];
    *(v24 + 4) = v26;
    *(v24 + 2) = v25;

    v27 = *(v3 + 2);
    v28 = __OFADD__(v27, 2);
    v6 = v27 + 2;
    if (v28)
    {
      goto LABEL_50;
    }

LABEL_5:
    *(v3 + 2) = v6;
    v2 += 6;
    if (!--v1)
    {

      *v40 = v3;
      return;
    }
  }

  v3 = sub_10113CED0(v3);
  v11 = *(v3 + 2);
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_100A28604(int64_t *a1@<X0>, int64_t *a2@<X8>)
{
  v36 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v5 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1005B981C(&unk_101A096C0);
  __chkstk_darwin(v8 - 8);
  v35 = (&v30 - v9);
  v10 = sub_1005B981C(&qword_101A00180);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v14 = *v2;
  v13 = v2[1];
  v37 = v2;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
    goto LABEL_22;
  }

  v16 = *a1;
  v15 = a1[1];
  v17.length = v15 - *a1;
  if (__OFSUB__(v15, *a1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v33 = a1[1];
  v34 = v13;
  v18 = v7;
  v38.location = v14;
  v17.location = v16;
  v38.length = v13 - v14;
  v19 = sub_1002BC848(v38, v17, 1);
  if (v19 != NSNotFound.getter())
  {
    v32 = a2;
    v31 = sub_1005B981C(&qword_101A000C0);
    v20 = *(v31 + 36);
    v21 = *(v10 + 48);
    sub_10000BE14(v37 + v20, v12, &unk_101A096C0);
    sub_10000BE14(a1 + v20, &v12[v21], &unk_101A096C0);
    v22 = *(v5 + 48);
    v23 = v36;
    if (v22(v12, 1, v36) == 1)
    {
      if (v22(&v12[v21], 1, v23) == 1)
      {
        sub_10000CAAC(v12, &unk_101A096C0);
        a2 = v32;
        goto LABEL_13;
      }

      goto LABEL_9;
    }

    v24 = v35;
    sub_10000BE14(v12, v35, &unk_101A096C0);
    if (v22(&v12[v21], 1, v23) == 1)
    {
      sub_100A47694(v24, type metadata accessor for CRLWPHyperlinkSmartFieldData);
LABEL_9:
      sub_10000CAAC(v12, &qword_101A00180);
      a2 = v32;
      goto LABEL_10;
    }

    sub_100A49E4C(&v12[v21], v18, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    v26 = sub_100A417D4(v24, v18);
    sub_100A47694(v18, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    sub_100A47694(v24, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    sub_10000CAAC(v12, &unk_101A096C0);
    a2 = v32;
    if (v26)
    {
LABEL_13:
      if (v16 >= v14)
      {
        v27 = v14;
      }

      else
      {
        v27 = v16;
      }

      if (v33 <= v34)
      {
        v28 = v34;
      }

      else
      {
        v28 = v33;
      }

      if (v28 >= v27)
      {
        v29 = v31;
        sub_10000BE14(v37 + v20, a2 + *(v31 + 36), &unk_101A096C0);
        *a2 = v27;
        a2[1] = v28;
        (*(*(v29 - 8) + 56))(a2, 0, 1, v29);
        return;
      }

      goto LABEL_23;
    }
  }

LABEL_10:
  v25 = sub_1005B981C(&qword_101A000C0);
  (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
}

void sub_100A28D8C()
{
  v149 = sub_1005B981C(qword_101A0CF60);
  v0 = *(v149 - 8);
  __chkstk_darwin(v149);
  v152 = &v126 - v1;
  v2 = sub_1005B981C(&unk_101A09540);
  v144 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v147 = &v126 - v6;
  v7 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v7 - 8);
  v9 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v146 = &v126 - v11;
  v150 = sub_1005B981C(&unk_101A09550);
  v12 = *(v150 - 8);
  __chkstk_darwin(v150);
  v143 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v148 = &v126 - v15;
  v139 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v139);
  v142 = (&v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v17 - 8);
  v138 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v126 - v26;
  v28 = *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange];
  if (!v28)
  {
    goto LABEL_30;
  }

  v29 = *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange];
  if (!v29)
  {
    goto LABEL_30;
  }

  v30 = *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText];
  if (!v30)
  {
    goto LABEL_30;
  }

  v128 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange;
  v129 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange;
  v130 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText;
  v132 = v0;
  v137 = v24;
  v31 = v28;
  v32 = v29;
  v33 = v30;
  if ([v33 length] < 1)
  {

    v25 = v145;
LABEL_30:

    v88 = v25;
    return;
  }

  v134 = v32;
  v140 = v31;
  v131 = v12;
  v141 = v9;
  sub_10068D144();
  v34 = v33;
  CRAttributedString.init(_:)();
  (*(v20 + 32))(v27, v22, v137);
  v151 = [v34 length];
  v35 = swift_allocObject();
  *(v35 + 16) = v27;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_10068D198;
  *(v36 + 24) = v35;
  aBlock[4] = sub_10068D1A0;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10110DB0C;
  aBlock[3] = &unk_101892680;
  v37 = _Block_copy(aBlock);

  [v34 enumerateAttributesInRange:0 options:v151 usingBlock:{0, v37}];

  _Block_release(v37);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v127 = v34;
  v133 = v20;
  KeyPath = swift_getKeyPath();
  v40 = CRAttributedString.count.getter();
  v135 = v27;
  sub_10081F4CC(KeyPath, 0, v40);

  v41 = [v145 range];
  v43 = v42;
  objc_allocWithZone(type metadata accessor for CRLWPStorage());
  v136 = v145;
  v151 = sub_100A2D1A0(v136, v41, v43);
  v44 = v136;
  v45 = v134;
  if ((v136[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns] & 1) == 0)
  {
    sub_100A2CB04();
    v44 = v136;
  }

  *&v151[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns] = *&v44[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns];

  v47 = *&v45[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v46 = *&v45[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  Strong = swift_unknownObjectWeakLoadStrong();
  v49 = v137;
  if (!Strong)
  {
    goto LABEL_11;
  }

  v50 = Strong;
  ObjectType = swift_getObjectType();
  v52 = swift_conformsToProtocol2();
  if (!v52)
  {
LABEL_76:
    __break(1u);
    return;
  }

  v53 = sub_1012778D4(ObjectType, v52);

  if (v53)
  {
LABEL_11:
    v54 = *&v151[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v54)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v126 = v4;
    v55 = v142;
    (*(*v54 + 896))();
    v56 = v138;
    sub_100A49D68(v55 + *(v139 + 20), v138, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v55, type metadata accessor for CRLWPShapeItemCRDTData);
    v57 = v133;
    (*(v133 + 16))(v22, v56, v49);
    sub_100A47694(v56, type metadata accessor for CRLWPStorageCRDTData);
    v58 = CRAttributedString.count.getter();
    (*(v57 + 8))(v22, v49);
    if (v58 >= (v47 & ~(v47 >> 63)))
    {
      v59 = v47 & ~(v47 >> 63);
    }

    else
    {
      v59 = v58;
    }

    v60 = v46 & ~(v46 >> 63);
    if (v60 < v59)
    {
      goto LABEL_73;
    }

    if (v58 >= v60)
    {
      v61 = v46 & ~(v46 >> 63);
    }

    else
    {
      v61 = v58;
    }

    v62 = CRAttributedString.attributedString.getter();
    v63 = [v62 string];

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v142 = v59;
    sub_100A2E55C(v59, v61, v64, v66, 1);

    CRAttributedString.runs.getter();
    v67 = v146;
    CRAttributedString.Runs.next()();
    v68 = *(v144 + 48);
    v69 = v68(v67, 1, v2);
    v70 = v147;
    if (v69 != 1)
    {
      v71 = *(v144 + 32);
      v72 = (v132 + 8);
      v73 = (v144 + 8);
      while (1)
      {
        v71(v70, v67, v2);
        v74 = CRAttributedString.Runs.Run.range.getter();
        v75 = v142 + v74;
        if (__OFADD__(v142, v74))
        {
          break;
        }

        CRAttributedString.Runs.Run.attributes.getter();
        v76 = CRAttributedString.Runs.Run.range.getter();
        v78 = v77 - v76;
        if (__OFSUB__(v77, v76))
        {
          goto LABEL_63;
        }

        v79 = v75 + v78;
        if (__OFADD__(v75, v78))
        {
          goto LABEL_64;
        }

        if (v79 < v75)
        {
          goto LABEL_65;
        }

        v80 = v152;
        sub_100A33634(v152, v75, v79);
        v81 = v80;
        v70 = v147;
        (*v72)(v81, v149);
        (*v73)(v70, v2);
        v67 = v146;
        CRAttributedString.Runs.next()();
        if (v68(v67, 1, v2) == 1)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_26:
    (*(v131 + 8))(v148, v150);
    v4 = v126;
    v49 = v137;
  }

  [v151 range];
  v82 = v140;
  v83 = [v140 start];
  v84 = *&v83[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v84 == NSNotFound.getter())
  {
    v85 = 0x7FFFFFFFFFFFFFFFLL;
    v86 = 0;
    v87 = v141;
  }

  else
  {
    v85 = *(v82 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
    v89 = *(v82 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
    v86 = v89 - v85;
    v87 = v141;
    if (__OFSUB__(v89, v85))
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  v90 = v135;
  v156 = _NSRange.intersection(_:)(*&v85);
  if (!v156.is_nil)
  {
    CRAttributedString.runs.getter();
    v148 = OBJC_IVAR____TtC8Freeform12CRLTextRange_range;
    CRAttributedString.Runs.next()();
    v146 = *(v144 + 48);
    v147 = (v144 + 48);
    if ((v146)(v87, 1, v2) == 1)
    {
LABEL_61:
      (*(v131 + 8))(v143, v150);

      (*(v133 + 8))(v135, v137);
      return;
    }

    v145 = *(v144 + 32);
    v142 = (v132 + 8);
    v144 += 32;
    v139 = v144 - 24;
    while (1)
    {
      (v145)(v4, v87, v2);
      v97 = *&v148[v82];
      v98 = CRAttributedString.Runs.Run.range.getter();
      v99 = v97 + v98;
      if (__OFADD__(v97, v98))
      {
        goto LABEL_66;
      }

      v100 = CRAttributedString.Runs.Run.range.getter();
      v102 = v101 - v100;
      if (__OFSUB__(v101, v100))
      {
        goto LABEL_67;
      }

      v103 = v99 + v102;
      if (__OFADD__(v99, v102))
      {
        goto LABEL_68;
      }

      if (v103 < v99)
      {
        goto LABEL_69;
      }

      v104 = [v151 range];
      v106 = v105;
      v107 = type metadata accessor for CRLTextRange();
      v108 = objc_allocWithZone(v107);
      v109 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:v104 caretAffinity:0];
      if (v106 >= NSNotFound.getter())
      {
        v110 = 0;
      }

      else
      {
        v110 = v106;
      }

      v111 = *&v109[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
      v112 = v111 + v110;
      if (__OFADD__(v111, v110))
      {
        goto LABEL_70;
      }

      if (v112 < v111)
      {
        goto LABEL_71;
      }

      v113 = v4;
      v114 = *&v109[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
      v115 = objc_allocWithZone(v107);
      v116 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
      *&v115[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
      *&v115[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
      v117 = &v115[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      *v117 = v111;
      *(v117 + 1) = v112;
      *&v115[v116] = v114;
      v4 = v113;
      v87 = v141;
      v153.receiver = v115;
      v153.super_class = v107;
      v118 = objc_msgSendSuper2(&v153, "init");

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      v120 = *&v118[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v119 = *&v118[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
      if (v119 >= v99)
      {
        v121 = v99;
      }

      else
      {
        v121 = *&v118[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
      }

      if (v99 >= v120)
      {
        v122 = v121;
      }

      else
      {
        v122 = *&v118[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      }

      if (v103 > v120)
      {
        v120 = v103;
      }

      if (v119 >= v103)
      {
        v123 = v120;
      }

      else
      {
        v123 = *&v118[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
      }

      v124 = v152;
      CRAttributedString.Runs.Run.attributes.getter();
      sub_100A33634(v124, v122, v123);

      (*v142)(v124, v149);
      (*v139)(v4, v2);
      CRAttributedString.Runs.next()();
      v125 = (v146)(v87, 1, v2);
      v82 = v140;
      if (v125 == 1)
      {
        goto LABEL_61;
      }
    }
  }

  v91 = *&v145[v129];
  *&v145[v129] = 0;

  v92 = *&v145[v128];
  *&v145[v128] = 0;

  v93 = *&v136[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS];
  *&v136[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS] = 0;

  v94 = *&v145[v130];
  *&v145[v130] = 0;

  *&v136[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextStyle] = 0;

  (*(v133 + 8))(v90, v49);
  v95 = v136;

  v96 = v95;
}