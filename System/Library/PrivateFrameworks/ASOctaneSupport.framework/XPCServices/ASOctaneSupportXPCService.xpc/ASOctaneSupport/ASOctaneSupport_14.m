void sub_100108838(uint64_t a1@<X8>)
{
  sub_10010B2AC();
  sub_10010B2E8();
  if (v8)
  {
    v7 = 0;
  }

  v3(v7 | (v6 << 48) | (v5 << 32) | v4, v2);
  sub_10010AF64();
  *a1 = v9;
  *(a1 + 4) = v10;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_10010B320(v11);
}

void sub_1001088B0(uint64_t a1)
{
  sub_10010B2AC();
  sub_10010B2E8();
  if (v8)
  {
    v7 = 0;
  }

  v2(v7 | (v6 << 48) | (v5 << 32) | v4, v3);
  sub_10010AF64();
  *a1 = v9;
  *(a1 + 4) = v10;
  if (v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_10010B320(v11);
}

void sub_100108910(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  CircularBuffer.index(_:offsetBy:)(*a1, a2, *v3, v3[1], v3[2]);
  sub_10010AF64();
  *a3 = v5;
  *(a3 + 4) = v6;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_10010B320(v8);
}

uint64_t sub_100108980()
{
  sub_1000997D8();
  swift_getWitnessTable();
  sub_10010B2FC();

  return sub_1001F70F8();
}

unint64_t sub_1001089F8(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 7))
  {
    v2 = 0x100000000000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  return CircularBuffer.distance(from:to:)(v2 | (*(a1 + 6) << 48) | (*(a1 + 2) << 32) | *a1, v3 | (*(a2 + 6) << 48) | (*(a2 + 2) << 32) | *a2);
}

Swift::Void __swiftcall CircularBuffer._doubleCapacity()()
{
  sub_100037C08();
  v1 = v0;
  v3 = *(v2 + 16);
  sub_10010B340();
  v4 = sub_1001F74B8();
  sub_10001A278();
  v30 = v5;
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  v9 = &v23 - v8;
  sub_10010B030();
  v10 = sub_1001F81E8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v11, v12);
  v14 = *v1;
  v13 = v1[1];
  v29 = v1[2];
  v15 = 2 * CircularBuffer.capacity.getter();
  sub_10010B030();
  sub_1001F6F78();
  v32 = sub_1001F78A8();
  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_10010B030();
    sub_1001F7988();
    v25 = v15;
    v26 = v9;
    v28 = v10;
    sub_1001F78B8(v15);
    v31 = v13;
    sub_1000183C4(&qword_1002B41F0);
    v24 = v3;
    sub_10010AF90();
    swift_getWitnessTable();
    v27 = v14;
    sub_10010B0D8(&qword_1002B41F8);
    sub_10010B008();
    sub_1001F6B08();
    sub_10010B314();
    sub_10010B030();
    sub_1001F76E8();
    sub_10010AFA8();
    sub_10010B01C();
    sub_1001F7938();
    v31 = v29;
    sub_1000183C4(&qword_1002B4200);
    sub_10010B08C();
    sub_100019C4C(v16, v17);
    sub_10010B008();
    sub_1001F6B08();
    sub_10010B314();
    sub_10010B01C();
    sub_1001F7938();
    v18 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
    v19 = v26;
    sub_1000995D4();
    sub_100018460(v20, v21, v22, v24);
    sub_1001F7868();
    (*(v30 + 8))(v19, v4);
    sub_10010AF78();
    swift_getWitnessTable();
    sub_10010B178();
    sub_1001F7938();

    v1[1] = 0;
    v1[2] = v18;
    *v1 = v32;
    sub_100037B00();
  }
}

Swift::Bool __swiftcall CircularBuffer.verifyInvariants()()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1001F74B8();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v8, v9);
  sub_10010B168();
  v11 = (v10 + 8);
  while (v6 != v4)
  {
    sub_10005053C();
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    v12 = sub_10001C990(v0, 1, v2);
    (*v11)(v0, v7);
    if (v12 == 1)
    {
      break;
    }

    v6 = CircularBuffer.mask.getter() & (v6 + 1);
  }

  sub_100037A50();
  return result;
}

Swift::Void __swiftcall CircularBuffer._resizeAndFlatten(newCapacity:)(Swift::Int newCapacity)
{
  sub_100037C08();
  v3 = v1;
  v5 = v4;
  v32 = *(v6 + 16);
  v7 = sub_1001F74B8();
  sub_10001A278();
  v9 = v8;
  sub_10001E844();
  __chkstk_darwin(v10, v11);
  sub_100056624();
  sub_10010B030();
  sub_1001F81E8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v12, v13);
  v15 = v28 - v14;
  sub_10010B030();
  sub_1001F6F78();
  v38 = sub_1001F78A8();
  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v30 = v2;
    v31 = v15;
    sub_10010B030();
    sub_1001F7988();
    sub_1001F78B8(v5);
    v16 = v3[2];
    if (v16 >= v3[1])
    {
      v34 = sub_1001F7998();
      v35 = v19;
      v36 = v20;
      v37 = v21;
      sub_10010B030();
      sub_1001F76E8();
      sub_10010AFA8();
    }

    else
    {
      v33 = v3[1];
      sub_1000183C4(&qword_1002B41F0);
      v29 = v9;
      sub_10010AF90();
      v28[1] = swift_getWitnessTable();
      sub_10010B0D8(&qword_1002B41F8);
      sub_10010B008();
      sub_1001F6B08();
      sub_10010B314();
      sub_10010B030();
      sub_1001F76E8();
      v28[0] = sub_10010AFA8();
      sub_10010B01C();
      sub_1001F7938();
      v33 = v16;
      sub_1000183C4(&qword_1002B4200);
      sub_10010B08C();
      sub_100019C4C(v17, v18);
      sub_10010B008();
      sub_1001F6B08();
      sub_10010B314();
      sub_10010B01C();
      v9 = v29;
    }

    sub_1001F7938();
    v22 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
    v23 = v30;
    sub_1000995D4();
    sub_100018460(v24, v25, v26, v32);
    sub_1001F7868();
    (*(v9 + 8))(v23, v7);
    sub_10010AF78();
    swift_getWitnessTable();
    sub_10010B178();
    sub_1001F7938();
    v3[1] = 0;
    v3[2] = v22;
    v27 = v38;

    *v3 = v27;
    sub_100037B00();
  }
}

uint64_t CircularBuffer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1000997D8();
  v7 = v6;
  v11 = CircularBuffer.startIndex.getter(v8, v9, v10);
  sub_10010AF38(v11);
  sub_10010B228();
  v17 = CircularBuffer.index(_:offsetBy:)(v12, v13, v14, v15, v16);
  sub_10010AF38(v17);

  return CircularBuffer.subscript.getter(a5, v7);
}

void (*CircularBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_100064190(0x38uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = *(a3 + 16);
  v7[3] = v8;
  sub_10002DFFC();
  *(v9 + 32) = v10;
  v12 = *(v11 + 64);
  v7[5] = sub_100064190(v12);
  v7[6] = sub_100064190(v12);
  CircularBuffer.subscript.getter(a2, *v3, v3[1], v3[2], v8);
  return sub_100109374;
}

void sub_100109374()
{
  sub_100037AEC();
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  if (v4)
  {
    v5 = v1[1];
    v6 = *v1;
    v7 = sub_10010B118();
    v8(v7);
    CircularBuffer.subscript.setter(v2, v6, v5);
    v9 = sub_100075518();
    v10(v9);
  }

  else
  {
    CircularBuffer.subscript.setter(*(*v0 + 48), *v1, v1[1]);
  }

  free(v3);
  free(v2);
  sub_100037A50();

  free(v11);
}

Swift::Void __swiftcall CircularBuffer.removeFirst(_:)(Swift::Int a1)
{
  sub_100037C08();
  v3 = v2;
  v5 = *(v4 + 16);
  sub_10010B030();
  sub_1001F74B8();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  sub_10010B168();
  v8 = v1[1];
  if (CircularBuffer.count.getter(*v1, v8, v1[2]) < v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (v3)
  {
    sub_1001F7988();
    sub_1001F78E8();
    sub_1001F78E8();
    do
    {
      sub_1000995D4();
      sub_100018460(v9, v10, v11, v5);
      sub_1001F78E8();
      v12 = sub_10010B178();
      sub_10010AA80(v12, v13);
      v14 = sub_10010B12C();
      v15(v14);
      v8 = CircularBuffer.mask.getter() & (v8 + 1);
      --v3;
    }

    while (v3);
  }

  v1[1] = v8;
  sub_100037B00();
}

uint64_t CircularBuffer.modify<A>(_:_:)(unsigned int a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = a1;
  v8 = sub_1001F74B8();
  sub_1001F7988();
  sub_1001F78E8();
  v9 = *v4;
  sub_10010AA80(v7, v9);
  v10 = v9 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v7;
  result = sub_10001C990(v10, 1, v6);
  if (result != 1)
  {
    return a2(v10);
  }

  __break(1u);
  return result;
}

void sub_100109668(void *a1@<X8>)
{
  sub_1001F7E68();
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  sub_1001F6CA8(v2);
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

uint64_t CircularBuffer.popFirst()()
{
  if (sub_10010B1B8() < 1)
  {
    v3 = 1;
  }

  else
  {
    CircularBuffer.removeFirst()(v2, v0);
    v3 = 0;
  }

  return sub_100018460(v0, v3, 1, v1);
}

uint64_t CircularBuffer.popLast()()
{
  if (sub_10010B1B8() < 1)
  {
    v3 = 1;
  }

  else
  {
    CircularBuffer.removeLast()(v2);
    v3 = 0;
  }

  return sub_100018460(v0, v3, 1, v1);
}

void CircularBuffer.removeLast()(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10010B030();
  sub_1001F74B8();
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  v6 = v9 - v5;
  v9[1] = *v1;
  v10 = *(v1 + 8);
  sub_10010B184();
  swift_getWitnessTable();
  sub_1001F6A58();
  if (sub_10001C990(v6, 1, v2) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10007E2C8();
    v7 = sub_100075518();
    v8(v7);
    sub_10010B258();
    sub_1001099FC();
  }
}

Swift::Void __swiftcall CircularBuffer.removeLast(_:)(Swift::Int a1)
{
  sub_100037C08();
  v3 = v2;
  v5 = *(v4 + 16);
  sub_10010B030();
  sub_1001F74B8();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  sub_10010B168();
  v8 = v1[2];
  if (CircularBuffer.count.getter(*v1, v1[1], v8) < v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (v3)
  {
    sub_1001F7988();
    sub_1001F78E8();
    sub_1001F78E8();
    do
    {
      v8 = CircularBuffer.mask.getter() & (v8 - 1);
      sub_1000995D4();
      sub_100018460(v9, v10, v11, v5);
      sub_1001F78E8();
      v12 = sub_10010B178();
      sub_10010AA80(v12, v13);
      v14 = sub_10010B12C();
      v15(v14);
      --v3;
    }

    while (v3);
  }

  v1[2] = v8;
  sub_100037B00();
}

void CircularBuffer.removeSubrange(_:)()
{
  sub_100037C08();
  v2 = v1;
  v32 = v3;
  v4 = HIDWORD(v1);
  v6 = *(v5 + 16);
  sub_10002DFFC();
  v30 = v7;
  v9 = HIWORD(v8);
  __chkstk_darwin(v10, v8);
  sub_100023510();
  sub_10010B030();
  type metadata accessor for CircularBuffer.Index();
  LODWORD(v33) = v2;
  WORD2(v33) = v4;
  BYTE6(v33) = v9;
  HIBYTE(v33) = HIBYTE(v2) & 1;
  v29 = v0 + 1;
  v31 = v0;
  v11 = sub_10010B104();
  CircularBuffer.startIndex.getter(v11, v12, v13);
  sub_10010AF64();
  sub_10010B0C0();
  swift_getWitnessTable();
  sub_10010B1F8();
  if ((sub_1001F6AB8() & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  LODWORD(v33) = v2;
  WORD2(v33) = v4;
  BYTE6(v33) = v9;
  HIBYTE(v33) = HIBYTE(v2) & 1;
  v14 = sub_10010B104();
  CircularBuffer.endIndex.getter(v14, v15, v16);
  sub_10010AF64();
  sub_10010B1F8();
  if ((sub_1001F6AC8() & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v17 = CircularBuffer.distance(from:to:)(v32 & 0x1FFFFFFFFFFFFFFLL, v2 & 0x1FFFFFFFFFFFFFFLL);
  if (v17 == 1)
  {
    CircularBuffer.remove(at:)();
    v18 = sub_10010B258();
    v19(v18);
  }

  else
  {
    v20 = v17;
    v21 = sub_10010B104();
    if (CircularBuffer.count.getter(v21, v22, v23) == v20)
    {
      sub_10010B030();
      sub_1001F74B8();
      v24 = _s25ASOctaneSupportXPCService4HeapV19underestimatedCountSivg_0();
      CircularBuffer.init(initialCapacity:)(v24, v6);
      v26 = v25;

      *v31 = v26;
      *v29 = 0;
      v29[1] = 0;
    }

    else
    {
      sub_10010B030();
      v33 = sub_1001F6F78();
      sub_10010B030();
      v27 = sub_1001F6FC8();
      WitnessTable = swift_getWitnessTable();
      CircularBuffer.replaceSubrange<A>(_:with:)(v32 & 0x1FFFFFFFFFFFFFFLL, v2 & 0x1FFFFFFFFFFFFFFLL, &v33, v30, v27, WitnessTable);
    }
  }

  sub_100037B00();
}

uint64_t sub_100109C94@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  a1();

  return sub_100018460(a3, 0, 1, a2);
}

void CircularBuffer.remove(at:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  LODWORD(v5) = v4;
  v39 = v6;
  v41 = v4;
  v42 = v7;
  v43 = v8;
  v44 = v9;
  v10 = *(v2 + 16);
  sub_10010B030();
  sub_1001F74B8();
  sub_10001A278();
  v37[2] = v11;
  __chkstk_darwin(v12, v13);
  sub_10004FE10();
  v37[1] = v14;
  __chkstk_darwin(v15, v16);
  v18 = v37 - v17;
  sub_10002DFFC();
  v38 = v19;
  __chkstk_darwin(v20, v21);
  sub_100023510();
  v40 = (v23 - v22);
  v24 = v0[1];
  v25 = v0[2];
  v51 = *v0;
  v52 = v24;
  v37[0] = v25;
  v53 = v25;
  sub_10010AFD4();
  swift_getWitnessTable();
  sub_1001F71B8();
  v45 = v48;
  v46 = v49;
  v47 = v50;
  v37[3] = v3;
  v26 = sub_1001F6A18();
  swift_getWitnessTable();
  type metadata accessor for CircularBuffer.Index();
  swift_getWitnessTable();
  v27 = sub_1001F6E88();
  v54[0] = v45;
  v54[1] = v46;
  v55 = v47;
  sub_10007E2C8();
  (*(v28 + 8))(v54, v26);
  if (v27)
  {
    v5 = v5;
    sub_10010B308();
    _s25ASOctaneSupportXPCService4HeapVyxSicig_0();
    if (sub_10001C990(v18, 1, v10) != 1)
    {
      v29 = *(v38 + 32);
      v29(v40, v18, v10);
      if (v24 == v5)
      {
        sub_10010B1A8();
        CircularBuffer.advanceHeadIdx(by:)(v30);
        sub_10010B048();
        sub_1001F78E8();
        sub_10010AA80(v24, *v1);
        sub_10010AFEC();
      }

      else
      {
        if (CircularBuffer.indexBeforeTailIdx()() != v5)
        {
          sub_10010B048();
          sub_1001F78E8();
          sub_10010AA80(v5, *v1);
          sub_10010AFEC();
          sub_10010B308();
          v33();
          v34 = v1[2];
          for (i = CircularBuffer.mask.getter() & (v5 + 1); i != v34; i = CircularBuffer.mask.getter() & (i + 1))
          {
            *&v48 = v5;
            *&v45 = i;
            sub_10010AF90();
            swift_getWitnessTable();
            sub_1001F6AF8();
            v5 = i;
          }

          sub_10010B1A8();
          CircularBuffer.advanceTailIdx(by:)(v36);
          goto LABEL_11;
        }

        sub_10010B1A8();
        CircularBuffer.advanceTailIdx(by:)(v31);
        sub_10010B048();
        sub_1001F78E8();
        sub_10010AA80(v5, *v1);
        sub_10010AFEC();
      }

      sub_10010B308();
      v32();
LABEL_11:
      v29(v39, v40, v10);
      sub_100037B00();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall CircularBuffer.reserveCapacity(_:)(Swift::Int a1)
{
  if (CircularBuffer.capacity.getter() < a1)
  {
    v2 = sub_1001062A8(a1);

    CircularBuffer._resizeAndFlatten(newCapacity:)(v2);
  }
}

void sub_10010A19C(uint64_t a1@<X0>, void *a2@<X8>)
{
  CircularBuffer.init()(*(a1 + 16));
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v3;
}

uint64_t sub_10010A1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CircularBuffer.replaceSubrange<A>(_:with:)();
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t sub_10010A29C(uint64_t a1, uint64_t a2)
{
  CircularBuffer.append(_:)();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_10010A38C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RangeReplaceableCollection<>._customRemoveLast()(a1, WitnessTable, a2);
}

uint64_t sub_10010A3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RangeReplaceableCollection<>._customRemoveLast(_:)(a1, a2, WitnessTable, a3);
}

void static CircularBuffer<A>.== infix(_:_:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v7 = CircularBuffer.count.getter(v4, v5, v6);
  sub_10010B2FC();
  if (v7 == CircularBuffer.count.getter(v8, v9, v10))
  {
    type metadata accessor for CircularBuffer();
    sub_10010B0A8();
    swift_getWitnessTable();
    sub_1001F7F98();
    v11 = sub_10010B36C();
    v11[2] = v3;
    v11[3] = v1;
    v11[4] = v3;
    __chkstk_darwin(v11, v12);
    sub_1001F77F8();
    swift_getWitnessTable();
    sub_1001F6DF8();
  }

  sub_100037B00();
}

void CircularBuffer<A>.hash(into:)()
{
  sub_100037C08();
  v1 = v0;
  sub_10002DFFC();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  sub_100023510();
  v8 = v7 - v6;

  v9 = sub_10010B154();
  v12 = CircularBuffer.startIndex.getter(v9, v10, v11);
  sub_10010B03C();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = sub_10010B154();
  CircularBuffer.endIndex.getter(v15, v16, v17);
  sub_10010B03C();
  sub_10010B34C();
  if (!v13 || v14 != v18)
  {
    v19 = (v3 + 8);
    do
    {
      if (v14)
      {
        v20 = 0x100000000000000;
      }

      else
      {
        v20 = 0;
      }

      CircularBuffer.subscript.getter(v1, v8);
      v12 = CircularBuffer.index(after:)(v20 & 0xFF00000000000000 | v12 & 0xFFFFFFFFFFFFFFLL);
      sub_10010B03C();
      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 1;
      }

      sub_1001F6A08();
      (*v19)(v8, v1);
      v21 = sub_10010B154();
      CircularBuffer.endIndex.getter(v21, v22, v23);
      sub_10010B03C();
      sub_10010B34C();
    }

    while (!v13 || ((v14 ^ v24) & 1) != 0);
  }

  sub_100037B00();
}

Swift::Int CircularBuffer<A>.hashValue.getter()
{
  sub_1000997D8();
  sub_1001F8068();
  sub_10010B228();
  CircularBuffer<A>.hash(into:)();
  return sub_1001F80D8();
}

Swift::Int sub_10010A944()
{
  sub_1001F8068();
  CircularBuffer<A>.hash(into:)();
  return sub_1001F80D8();
}

uint64_t CircularBuffer.init(arrayLiteral:)()
{
  sub_1000D4D04();
  type metadata accessor for CircularBuffer();
  sub_10010B19C();
  sub_1001F6FC8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1001F7228();
  return v1;
}

uint64_t sub_10010AA50@<X0>(uint64_t *a1@<X8>)
{
  result = CircularBuffer.init(arrayLiteral:)();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_10010AA80(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10010AB2C()
{

  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010AE00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10010AE3C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10010AE78(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 8))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 7);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010AEC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10010AFA8()
{

  return swift_getWitnessTable();
}

uint64_t sub_10010B048()
{
  sub_100018460(*(v1 - 296), 1, 1, v0);

  return sub_1001F7988();
}

uint64_t sub_10010B0D8(unint64_t *a1)
{

  return sub_100019C4C(a1, v1);
}

uint64_t sub_10010B1B8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];

  return CircularBuffer.count.getter(v2, v3, v4);
}

__n128 sub_10010B240()
{
  *(v0 - 240) = *(v0 - 152);
  result = *(v0 - 128);
  *(v0 - 232) = *(v0 - 144);
  *(v0 - 216) = result;
  return result;
}

unint64_t sub_10010B264(uint64_t a1)
{

  return CircularBuffer.subscript.setter(a1, v1, v2, v3, v4);
}

unint64_t sub_10010B288(uint64_t a1)
{

  return CircularBuffer.subscript.setter(a1, v1, v2, v4 & 0x1FFFFFFFFFFFFFFLL, v3 & 0x1FFFFFFFFFFFFFFLL);
}

__n128 sub_10010B314()
{
  result = *(v0 - 128);
  v2 = *(v0 - 112);
  *(v0 - 160) = result;
  *(v0 - 144) = v2;
  return result;
}

uint64_t sub_10010B36C()
{

  return swift_allocObject();
}

uint64_t sub_10010B384()
{
  v1 = v0;
  v2 = sub_1000183C4(&qword_1002B4310);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v17[-1] - v4;
  v6 = sub_1000183C4(&qword_1002AF150);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v17[-1] - v8;
  sub_100026064(v1, v19);
  sub_1000183C4(&qword_1002B4318);
  if (swift_dynamicCast())
  {
    memcpy(v17, v18, 0xD1uLL);
    if (v17[8])
    {
      sub_1000888D8(v17[8], v5);
      v10 = type metadata accessor for IAPTransaction();
      if (sub_10001C990(v5, 1, v10) == 1)
      {
        sub_100057E48(v17);
        v11 = &qword_1002B4310;
        v12 = v5;
      }

      else
      {
        sub_10010B5FC(&v5[*(v10 + 68)], v9);
        sub_10010B66C(v5);
        v13 = sub_1000183C4(&qword_1002AC7C8);
        if (sub_10001C990(v9, 1, v13) != 1)
        {
          v16 = *&v9[*(v13 + 52)];

          sub_1000183C4(&qword_1002ACA10);
          sub_10003A2B4();
          v14 = sub_1001F6A68();
          sub_100057E48(v17);

          sub_10004BDE8(v9, &qword_1002AC7C8);
          return v14;
        }

        sub_100057E48(v17);
        v11 = &qword_1002AF150;
        v12 = v9;
      }

      sub_10004BDE8(v12, v11);
    }

    else
    {
      sub_100057E48(v17);
    }
  }

  return 0;
}

uint64_t sub_10010B5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AF150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010B66C(uint64_t a1)
{
  v2 = type metadata accessor for IAPTransaction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010B6C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010B708(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t NonBlockingFileIO.readChunked(fileRegion:chunkSize:allocator:eventLoop:chunkHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = a3 & 0xFFFFFFFFFFFFFFLL;
  result = FileRegion.readableBytes.getter(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  if (a4 < 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(result / a4, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v41 = a5;
  v40 = result % a4;
  v20 = result / a4 + 1;
  swift_getObjectType();
  sub_10010E868();
  v27 = EventLoop.makePromise<A>(of:file:line:)(v21, v22, v23, v24, 176, v25, v26, a10);
  v28 = v20;
  v29 = v27;
  v30 = a4;
  if (v28 <= 1 && ((v30 = v40, v28 == 1) ? (v31 = v40 < 1) : (v31 = 1), v31))
  {
    sub_1000A13B0();
  }

  else
  {
    sub_10010E884();
    v39 = v32;
    v38 = a6;
    v33 = swift_allocObject();
    type metadata accessor for ByteBuffer._Storage();
    v34 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v30, v41, a6, a7, a8);
    sub_10010E8A0(v34);
    sub_10010E878();
    v35 = v29;
    v36 = swift_allocObject();
    *(v36 + 16) = v30;
    *(v36 + 24) = v33;
    *(v36 + 32) = a1;
    *(v36 + 40) = v18;
    *(v36 + 48) = 0;

    sub_10010CF1C(a9, a10, sub_10010DC8C, v36, &type metadata for ByteBuffer, &unk_100289D48, sub_10010E614);

    v29 = v35;

    sub_10010E8FC();
    v37 = swift_allocObject();
    *(v37 + 16) = a11;
    *(v37 + 24) = a12;
    *(v37 + 32) = v35;
    *(v37 + 40) = a9;
    *(v37 + 48) = a10;
    *(v37 + 56) = v40;
    *(v37 + 64) = a4;
    *(v37 + 72) = a13;
    *(v37 + 80) = a1;
    *(v37 + 88) = v18;
    *(v37 + 96) = 0;
    *(v37 + 104) = v41;
    *(v37 + 112) = v38;
    *(v37 + 120) = a7;
    *(v37 + 128) = a8;
    *(v37 + 136) = v39;
    *(v37 + 144) = 0;

    swift_unknownObjectRetain();

    sub_100121C30();
  }

  return v29;
}

uint64_t NonBlockingFileIO.readChunked(fileHandle:fromOffset:byteCount:chunkSize:allocator:eventLoop:chunkHandler:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a4 < 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = a3 / a4 + 1;
  if (__OFADD__(a3 / a4, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = result;
  v39 = a3 % a4;
  swift_getObjectType();
  sub_10010E868();
  v25 = EventLoop.makePromise<A>(of:file:line:)(v19, v20, v21, v22, 176, v23, v24, a10);
  v26 = v14;
  v38 = v25;
  v27 = a4;
  if (v26 <= 1 && ((v27 = v39, v26 == 1) ? (v28 = v39 < 1) : (v28 = 1), v28))
  {
    v29 = v25;
    sub_1000A13B0();
  }

  else
  {
    sub_10010E884();
    v36 = v30;
    v35 = a5;
    v31 = swift_allocObject();
    type metadata accessor for ByteBuffer._Storage();
    v32 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v27, a5, a6, a7, a8);
    sub_10010E8A0(v32);
    sub_10010E878();
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    *(v33 + 24) = v31;
    *(v33 + 32) = v18;
    *(v33 + 40) = a2;
    *(v33 + 48) = 0;

    sub_10010CF1C(a9, a10, sub_10010E808, v33, &type metadata for ByteBuffer, &unk_100289D48, sub_10010E614);

    sub_10010E8FC();
    v34 = swift_allocObject();
    *(v34 + 16) = a11;
    *(v34 + 24) = a12;
    v29 = v38;
    *(v34 + 32) = v38;
    *(v34 + 40) = a9;
    *(v34 + 48) = a10;
    *(v34 + 56) = v39;
    *(v34 + 64) = a4;
    *(v34 + 72) = a13;
    *(v34 + 80) = v18;
    *(v34 + 88) = a2;
    *(v34 + 96) = 0;
    *(v34 + 104) = v35;
    *(v34 + 112) = a6;
    *(v34 + 120) = a7;
    *(v34 + 128) = a8;
    *(v34 + 136) = v36;
    *(v34 + 144) = 0;

    swift_unknownObjectRetain();

    sub_100121C30();
  }

  return v29;
}

uint64_t NonBlockingFileIO.readChunked(fileHandle:byteCount:chunkSize:allocator:eventLoop:chunkHandler:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a3 < 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = a2 / a3 + 1;
  if (__OFADD__(a2 / a3, 1))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v18 = result;
  v39 = a2 % a3;
  swift_getObjectType();
  sub_10010E868();
  v25 = EventLoop.makePromise<A>(of:file:line:)(v19, v20, v21, v22, 176, v23, v24, a9);
  v26 = v13;
  v38 = v25;
  v27 = a3;
  if (v26 <= 1 && ((v27 = v39, v26 == 1) ? (v28 = v39 < 1) : (v28 = 1), v28))
  {
    v29 = v25;
    sub_1000A13B0();
  }

  else
  {
    sub_10010E884();
    v37 = v30;
    v36 = a4;
    v31 = swift_allocObject();
    type metadata accessor for ByteBuffer._Storage();
    v32 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v27, a4, a5, a6, a7);
    v33 = *(v32 + 16);
    *(v31 + 16) = v32;
    *(v31 + 24) = 0;
    *(v31 + 32) = v33;
    *(v31 + 36) = 0;
    *(v31 + 38) = 0;
    sub_10010E878();
    v34 = swift_allocObject();
    *(v34 + 16) = v27;
    *(v34 + 24) = v31;
    *(v34 + 32) = v18;
    *(v34 + 40) = 0;
    *(v34 + 48) = 1;

    sub_10010CF1C(a8, a9, sub_10010E808, v34, &type metadata for ByteBuffer, &unk_100289D48, sub_10010E614);

    sub_10010E8FC();
    v35 = swift_allocObject();
    *(v35 + 16) = a10;
    *(v35 + 24) = a11;
    v29 = v38;
    *(v35 + 32) = v38;
    *(v35 + 40) = a8;
    *(v35 + 48) = a9;
    *(v35 + 56) = v39;
    *(v35 + 64) = a3;
    *(v35 + 72) = a12;
    *(v35 + 80) = v18;
    *(v35 + 88) = 0;
    *(v35 + 96) = 1;
    *(v35 + 104) = v36;
    *(v35 + 112) = a5;
    *(v35 + 120) = a6;
    *(v35 + 128) = a7;
    *(v35 + 136) = v37;
    *(v35 + 144) = 0;

    swift_unknownObjectRetain();

    sub_100121C30();
  }

  return v29;
}

uint64_t sub_10010BFA0(uint64_t result, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *result;
  v19 = *(result + 8);
  v21 = *(result + 16) | ((*(result + 20) | (*(result + 22) << 16)) << 32);
  if (*(result + 23))
  {
    swift_errorRetain();
    sub_1000A13B0();

    return sub_1000A3A2C(v20, v19, v21, 1);
  }

  else
  {
    v22 = (HIDWORD(v19) - v19);
    if (HIDWORD(v19) < v19)
    {
      __break(1u);
    }

    else
    {
      if (v22)
      {
        v28 = v21 & 0xFFFFFFFFFFFFFFLL;
        a2(v20, v19, v28);
        v30 = swift_allocObject();
        *(v30 + 16) = a5;
        *(v30 + 24) = a6;
        *(v30 + 32) = a7;
        *(v30 + 40) = a8;
        *(v30 + 48) = a9;
        *(v30 + 56) = a10;
        *(v30 + 64) = a11;
        *(v30 + 72) = a12 & 1;
        *(v30 + 80) = a13;
        *(v30 + 88) = a14;
        *(v30 + 96) = a15;
        *(v30 + 104) = a16;
        *(v30 + 112) = a2;
        *(v30 + 120) = a3;
        *(v30 + 128) = a4;
        *(v30 + 136) = a17;
        *(v30 + 144) = a18;
        *(v30 + 152) = v22;

        swift_unknownObjectRetain();

        sub_10011DE78();
      }

      else
      {
        a2(*result, v19, v21 & 0xFFFFFFFFFFFFFFLL);
        sub_10002FEFC(a4);
      }
    }
  }

  return result;
}

uint64_t sub_10010C1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (*(a1 + 8))
  {
    v19 = *a1;
    swift_errorRetain();
    sub_1000A13B0();

    return sub_1000374AC(v19, 1);
  }

  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/NonBlockingFileIO.swift", 119, 2, 200, ObjectType, a3);
  if (__OFSUB__(a17, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v26 = a18 + a19;
  if (__OFADD__(a18, a19))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = a5;
  if (a17 - 1 > 1 || ((v27 = a4, a17 == 2) ? (v28 = a4 < 1) : (v28 = 1), !v28))
  {
    v29 = a8;
    if ((a9 & 1) != 0 || (v29 = a8 + v26, !__OFADD__(a8, v26)))
    {
      v40 = a18 + a19;
      v41 = a17 - 1;
      v42 = a8;
      v39 = a10;
      if (v27 >= 1)
      {
        v30 = swift_allocObject();
        type metadata accessor for ByteBuffer._Storage();
        v31 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v27, a10, a11, a12, a13);
        v32 = *(v31 + 16);
        *(v30 + 16) = v31;
        *(v30 + 24) = 0;
        *(v30 + 32) = v32;
        *(v30 + 36) = 0;
        *(v30 + 38) = 0;
        v33 = swift_allocObject();
        *(v33 + 16) = v27;
        *(v33 + 24) = v30;
        *(v33 + 32) = a7;
        *(v33 + 40) = v29;
        v34 = a9;
        *(v33 + 48) = a9 & 1;

        v35 = a6;
        sub_10010CF1C(a2, a3, sub_10010E808, v33, &type metadata for ByteBuffer, &unk_100289D48, sub_10010E614);

        v36 = a15;
        v37 = a4;
LABEL_22:
        v38 = swift_allocObject();
        *(v38 + 16) = a14;
        *(v38 + 24) = v36;
        *(v38 + 32) = a16;
        *(v38 + 40) = a2;
        *(v38 + 48) = a3;
        *(v38 + 56) = v37;
        *(v38 + 64) = a5;
        *(v38 + 72) = v35;
        *(v38 + 80) = a7;
        *(v38 + 88) = v42;
        *(v38 + 96) = v34 & 1;
        *(v38 + 104) = v39;
        *(v38 + 112) = a11;
        *(v38 + 120) = a12;
        *(v38 + 128) = a13;
        *(v38 + 136) = v41;
        *(v38 + 144) = v40;

        swift_unknownObjectRetain();

        sub_100121C30();
      }

      if (qword_1002AC430 == -1)
      {
LABEL_21:

        EventLoop.makeSucceededFuture<A>(_:file:line:)();

        v36 = a15;
        v35 = a6;
        v37 = a4;
        v34 = a9;
        goto LABEL_22;
      }

LABEL_26:
      swift_once();
      goto LABEL_21;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return sub_1000A13B0();
}

void sub_10010CB18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = v6;
  if (a1 < 1)
  {
LABEL_46:
    swift_beginAccess();
    v42 = *(a2 + 32);
    v43 = *(a2 + 36);
    v44 = *(a2 + 38);
    *a6 = *(a2 + 16);
    *(a6 + 8) = *(a2 + 24);
    *(a6 + 16) = v42;
    *(a6 + 20) = v43;
    *(a6 + 22) = v44;

    return;
  }

  v10 = 0;
  v48 = a1;
  while (1)
  {
    v11 = a1 - v10;
    if (__OFSUB__(a1, v10))
    {
      break;
    }

    swift_beginAccess();
    if (v11 >= 1)
    {
      v12 = *(a2 + 28);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_55;
      }

      v14 = *(a2 + 32);
      v15 = *(a2 + 38) | (*(a2 + 36) << 8);
      v16 = v14 >= v15;
      v17 = v14 - v15;
      if (!v16)
      {
        goto LABEL_56;
      }

      if (v13 > v17)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(a2 + 38) | (*(a2 + 36) << 8);
        if (!isUniquelyReferenced_nonNull_native)
        {
          LODWORD(v25) = *(a2 + 32);
          if (v25 < v19)
          {
            goto LABEL_61;
          }

          if (__CFADD__(v19, v25 - v19))
          {
            goto LABEL_63;
          }

          v26 = v19 + v13;
          if (__CFADD__(v19, v13))
          {
            goto LABEL_64;
          }

          if (v26 >= v25)
          {
            v25 = v25;
          }

          else
          {
            v25 = v26;
          }

          if (v25 < v19)
          {
            goto LABEL_65;
          }

          v27 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v19 | (v25 << 32), v13);
          *(a2 + 16) = v27;

          v28 = *(v27 + 16);
          goto LABEL_28;
        }

        v20 = v19 + v13;
        if (__CFADD__(v19, v13))
        {
          goto LABEL_62;
        }

        v21 = *(a2 + 32);
        if (v21 < v20)
        {
          v22 = *(a2 + 16);
          v23 = *(v22 + 16);
          if (v23 < v20)
          {
            if (v19)
            {
              if (v21 < v19)
              {
                goto LABEL_67;
              }

              v24 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v19 | (v21 << 32), v13);

              *(a2 + 16) = v24;
              v22 = v24;
            }

            else
            {
              ByteBuffer._Storage.reallocStorage(capacity:)(v13);
            }

            v28 = *(v22 + 16);
LABEL_28:
            *(a2 + 32) = v28;
            *(a2 + 36) = 0;
            *(a2 + 38) = 0;
            goto LABEL_29;
          }

          if (v23 < v19)
          {
            goto LABEL_66;
          }

          *(a2 + 32) = v23;
        }
      }
    }

LABEL_29:
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(a2 + 32);
    v31 = *(a2 + 36);
    v32 = *(a2 + 38);
    if ((v29 & 1) == 0)
    {
      v33 = v32 | (v31 << 8);
      v34 = v30 - v33;
      if (v30 < v33)
      {
        goto LABEL_57;
      }

      if (__CFADD__(v33, v34))
      {
        goto LABEL_58;
      }

      if (v30 < v33)
      {
        goto LABEL_59;
      }

      v35 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v33 | (v30 << 32), v34);
      *(a2 + 16) = v35;

      v32 = 0;
      v31 = 0;
      v30 = *(v35 + 16);
      *(a2 + 32) = v30;
      *(a2 + 36) = 0;
      *(a2 + 38) = 0;
    }

    swift_beginAccess();
    if (v30 < (v32 | (v31 << 8)))
    {
      goto LABEL_52;
    }

    v36 = *(a2 + 28);
    swift_beginAccess();
    if (*(a3 + 16) != 1)
    {
      sub_1000274C4();
      swift_allocError();
      *v45 = 0xD00000000000001FLL;
      *(v45 + 8) = 0x8000000100224AB0;
      *(v45 + 16) = 9;
LABEL_49:
      swift_willThrow();
LABEL_50:
      swift_endAccess();
      return;
    }

    if (a5)
    {
      v37 = v7;
      sub_10019DF8C();
    }

    else
    {
      if (__OFADD__(a4, v10))
      {
        goto LABEL_60;
      }

      v37 = v7;
      sub_10019E0EC();
    }

    v7 = v37;
    if (v37)
    {
      goto LABEL_50;
    }

    v40 = v38;
    if ((v39 & 1) == 0)
    {
      sub_10010E5A0();
      swift_allocError();
      goto LABEL_49;
    }

    if (__CFADD__(v36, v38))
    {
      goto LABEL_53;
    }

    *(a2 + 28) = v36 + v38;
    swift_endAccess();
    if (!v40)
    {
      goto LABEL_46;
    }

    v41 = __OFADD__(v10, v40);
    v10 += v40;
    if (v41)
    {
      goto LABEL_54;
    }

    a1 = v48;
    if (v10 >= v48)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_52:
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
  __break(1u);
LABEL_67:
  __break(1u);
}

uint64_t sub_10010CF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v13 = EventLoop.makePromise<A>(of:file:line:)(a5, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/NIOThreadPool.swift", 115, 2, 224, ObjectType, a5, a2);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;

  NIOThreadPool.submit(_:)(a7, v14);

  return v13;
}

uint64_t sub_10010CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1000183C4(&qword_1002B4330);
  v9 = EventLoop.makePromise<A>(of:file:line:)(v8, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/NIOThreadPool.swift", 115, 2, 224, ObjectType, v8, a2);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a4;

  NIOThreadPool.submit(_:)(sub_10010E590, v10);

  return v9;
}

uint64_t sub_10010D0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for NIOFileHandle();
  v9 = EventLoop.makePromise<A>(of:file:line:)(v8, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/NIOThreadPool.swift", 115, 2, 224, ObjectType, v8, a2);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a3;
  v10[4] = a4;

  NIOThreadPool.submit(_:)(sub_10010E52C, v10);

  return v9;
}

uint64_t NonBlockingFileIO.changeFileSize(fileHandle:size:eventLoop:)()
{
  sub_10010E8D0();
  sub_10004794C();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  v3 = sub_100037B7C();
  v9 = sub_10010CF1C(v3, v4, v5, v2, v6, v7, v8);

  return v9;
}

void sub_10010D250(uint64_t a1)
{
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    sub_10019E1A4();
  }

  else
  {
    sub_1000274C4();
    swift_allocError();
    *v2 = 0xD00000000000001FLL;
    *(v2 + 8) = 0x8000000100224AB0;
    *(v2 + 16) = 9;
    swift_willThrow();
  }
}

uint64_t NonBlockingFileIO.readFileSize(fileHandle:eventLoop:)(uint64_t a1)
{

  v2 = sub_100037B7C();
  v8 = sub_10010CF1C(v2, v3, v4, a1, v5, v6, v7);

  return v8;
}

void sub_10010D39C(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    sub_10019E23C();
    if (!v2)
    {
      sub_10019E23C();
      v6 = v5;
      sub_10019E23C();
      *a2 = v6;
    }
  }

  else
  {
    sub_1000274C4();
    swift_allocError();
    *v7 = 0xD00000000000001FLL;
    *(v7 + 8) = 0x8000000100224AB0;
    *(v7 + 16) = 9;
    swift_willThrow();
  }
}

void NonBlockingFileIO.write(fileHandle:buffer:eventLoop:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v7 = HIDWORD(a3);
  v8 = (HIDWORD(a3) - a3);
  if (HIDWORD(a3) < a3)
  {
    __break(1u);
  }

  else if (v8)
  {
    v10 = a4;
    v13 = HIWORD(a4);
    v14 = HIDWORD(a4);
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = v6;
    *(v15 + 28) = v7;
    *(v15 + 32) = v10;
    *(v15 + 36) = v14;
    *(v15 + 38) = v13;
    *(v15 + 40) = v8;
    *(v15 + 48) = a1;
    *(v15 + 56) = 0;
    *(v15 + 64) = 1;

    sub_10010CF1C(a5, a6, sub_10010DD18, v15, &type metadata for ()[8], &unk_100289D20, sub_10010E604);
  }

  else
  {
    swift_getObjectType();
    sub_10010E868();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
  }
}

void NonBlockingFileIO.write(fileHandle:toOffset:buffer:eventLoop:)()
{
  sub_1000A409C();
  v7 = v6;
  v8 = HIDWORD(v6);
  v9 = (HIDWORD(v6) - v6);
  if (HIDWORD(v6) < v6)
  {
    __break(1u);
  }

  else
  {
    if (v9)
    {
      v10 = v3;
      v11 = v2;
      v12 = v1;
      v13 = v0;
      v17 = v4;
      v18 = v5;
      v14 = HIWORD(v3);
      v15 = HIDWORD(v3);
      v16 = swift_allocObject();
      *(v16 + 16) = v11;
      *(v16 + 24) = v7;
      *(v16 + 28) = v8;
      *(v16 + 32) = v10;
      *(v16 + 36) = v15;
      *(v16 + 38) = v14;
      *(v16 + 40) = v9;
      *(v16 + 48) = v13;
      *(v16 + 56) = v12;
      *(v16 + 64) = 0;

      sub_10010CF1C(v17, v18, sub_10010E820, v16, &type metadata for ()[8], &unk_100289D20, sub_10010E604);
    }

    else
    {
      swift_getObjectType();
      sub_10010E868();
      EventLoop.makeSucceededFuture<A>(_:file:line:)();
    }

    sub_1000814C0();
  }
}

void sub_10010D748(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v12 = a2;
  v13 = HIDWORD(a2);

  swift_beginAccess();
  swift_beginAccess();
  v14 = 0;
  while (v13 >= v12)
  {
    if (__OFSUB__(a4, v14))
    {
      goto LABEL_21;
    }

    if (a4 - v14 != v13 - v12)
    {
      goto LABEL_22;
    }

    if (*(a5 + 16) != 1)
    {
      sub_1000274C4();
      swift_allocError();
      *v20 = 0xD00000000000001FLL;
      *(v20 + 8) = 0x8000000100224AB0;
      *(v20 + 16) = 9;
LABEL_18:
      swift_willThrow();
LABEL_19:

      return;
    }

    if (a7)
    {
      v15 = v8;
      sub_10019E03C();
    }

    else
    {
      if (__OFADD__(a6, v14))
      {
        goto LABEL_25;
      }

      v15 = v8;
      sub_10019E2DC();
    }

    v8 = v15;
    if (v15)
    {
      goto LABEL_19;
    }

    if ((v17 & 1) == 0)
    {
      sub_10010E5A0();
      swift_allocError();
      goto LABEL_18;
    }

    v18 = __CFADD__(v12, v16);
    v12 += v16;
    if (v18)
    {
      goto LABEL_23;
    }

    v19 = __OFADD__(v14, v16);
    v14 += v16;
    if (v19)
    {
      goto LABEL_24;
    }

    if (v14 >= a4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t NonBlockingFileIO.openFile(path:eventLoop:)()
{
  sub_10010E8D0();
  sub_10004794C();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  v3 = sub_100037B7C();
  v6 = sub_10010CFEC(v3, v4, v5, v2);

  return v6;
}

void sub_10010D980(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for NIOFileHandle();

  NIOFileHandle.__allocating_init(path:mode:flags:)(a1, a2, 1);
  if (!v3)
  {
    v8 = v7;
    swift_beginAccess();
    if (*(v8 + 16) == 1)
    {
      v9 = *(v8 + 20);

      v10 = sub_100027518(v9, 0, 2);
      sub_100027518(v9, 0, 0);
      if (v10 < 0)
      {
        __break(1u);
      }

      else
      {
        v13 = static IntegerBitPacking.unpackUInt32UInt16UInt8(_:)(0);
        *a3 = v8;
        *(a3 + 8) = v8;
        *(a3 + 16) = v10;
        *(a3 + 24) = v13;
        *(a3 + 28) = WORD2(v13);
        *(a3 + 30) = BYTE6(v13);
      }
    }

    else
    {
      sub_1000274C4();
      swift_allocError();
      *v11 = 0xD00000000000001FLL;
      *(v11 + 8) = 0x8000000100224AB0;
      *(v11 + 16) = 9;
      swift_willThrow();
      NIOFileHandle.close()();
      if (v12)
      {
      }

      swift_willThrow();
    }
  }
}

uint64_t NonBlockingFileIO.openFile(path:mode:flags:eventLoop:)(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v4 = a4;
  v8 = HIDWORD(a4);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 36) = v4;
  *(v9 + 40) = v8;

  v10 = sub_100037B7C();
  v13 = sub_10010D0D0(v10, v11, v12, v9);

  return v13;
}

void sub_10010DBD4(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  type metadata accessor for NIOFileHandle();

  NIOFileHandle.__allocating_init(path:mode:flags:)(a1, a2, a3);
  if (!v4)
  {
    *a4 = v9;
  }
}

uint64_t sub_10010DC58()
{

  sub_10010E884();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010DCA8()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010DD30()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_10010DDAC()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010DDFC()
{

  return _swift_deallocObject(v0, 44, 7);
}

unint64_t sub_10010DE64()
{
  result = qword_1002B4320;
  if (!qword_1002B4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4320);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NonBlockingFileIO.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10010DF64);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10010DF9C(char a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    sub_10010E53C();
    swift_allocError();
    swift_errorRetain();
    LOBYTE(v4) = 1;
    sub_1000A18A4();
  }

  else
  {
    a3(&v4);

    sub_1000A18A4();
  }
}

uint64_t sub_10010E0D8(char a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    sub_10010E53C();
    swift_allocError();
    swift_errorRetain();
    sub_1000A13B0();
  }

  else
  {
    a3();

    return sub_1000A13B0();
  }
}

uint64_t sub_10010E1C8(char a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    sub_10010E53C();
    swift_allocError();
    swift_errorRetain();
    sub_1000A1A00();
  }

  else
  {
    a3(&v4);

    return sub_1000A1A00();
  }
}

uint64_t sub_10010E2BC(char a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    sub_10010E53C();
    swift_allocError();
    swift_errorRetain();
    LOBYTE(v4) = 1;
    sub_1000A1A48();
  }

  else
  {
    a3(&v4);

    sub_1000A1A48();
  }
}

uint64_t sub_10010E42C(char a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    sub_10010E53C();
    swift_allocError();
    swift_errorRetain();
    sub_1000A1BA8();
  }

  else
  {
    a3(&v4);

    sub_1000A1BA8();
  }
}

unint64_t sub_10010E53C()
{
  result = qword_1002B4328;
  if (!qword_1002B4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4328);
  }

  return result;
}

unint64_t sub_10010E5A0()
{
  result = qword_1002B4338;
  if (!qword_1002B4338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4338);
  }

  return result;
}

uint64_t sub_10010E624()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10010E6C8()
{

  swift_unknownObjectRelease();

  sub_10010E8FC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010E76C()
{

  sub_10010E878();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10010E8A0(uint64_t result)
{
  v2 = *(result + 16);
  *(v1 + 16) = result;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  *(v1 + 36) = 0;
  *(v1 + 38) = 0;
  return result;
}

uint64_t sub_10010E8B8(uint64_t result)
{
  v2 = *(result + 16);
  *(v1 + 16) = result;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  *(v1 + 36) = 0;
  *(v1 + 38) = 0;
  return result;
}

uint64_t sub_10010E908(uint64_t a1, uint64_t a2)
{

  return static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(a1, a2, v4, v3, v2);
}

__n128 sub_10010E928@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F031C();
  if (v3)
  {
    sub_10010EA20(v2, v3, v4 & 1);

    sub_1001F15CC();
    v9 = v12;
    v10 = v11;
    v5 = v13 | ((v14 | (v15 << 16)) << 32);
    v6 = 3;
  }

  else
  {
    v5 = 0;
    v9 = 0u;
    v10 = 0u;
    v6 = 21;
  }

  type metadata accessor for HTTPResponseHead._Storage();
  v7 = swift_allocObject();
  *(v7 + 32) = v6;
  *(v7 + 40) = 65537;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *a1 = v7;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  result = v10;
  *(a1 + 40) = v9;
  *(a1 + 24) = v10;
  *(a1 + 62) = BYTE6(v5);
  *(a1 + 60) = WORD2(v5);
  *(a1 + 56) = v5;
  return result;
}

uint64_t sub_10010EA20(uint64_t a1, unint64_t a2, char a3)
{
  sub_10005A558(a1, a2);
  if ((v7 & 1) != 0 || (sub_10001AE68((v3 + 88), *(v3 + 112)), (v8 = sub_10008E790()) == 0))
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);

    v13 = sub_1001F6668();
    v14 = sub_1001F7298();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      sub_10005A558(a1, a2);
      sub_1000183C4(&qword_1002B32F0);
      v17 = sub_1001F6BA8();
      v19 = sub_1000E4544(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "no transaction for id: %s", v15, 0xCu);
      sub_100019CCC(v16);
      sub_10003A72C();
      sub_10003A72C();
    }

    return 0;
  }

  else
  {
    v9 = v8;
    sub_1000C5464(3);
    if ((v10 & 1) != 0 && (sub_1000BFBB0() & 1) == 0)
    {
      sub_10001AE68((v3 + 88), *(v3 + 112));
      sub_10008E384(v9, 1, a3 & 1);

      return 2;
    }

    else
    {

      return 1;
    }
  }
}

uint64_t HTTPServerUpgradeHandler.__allocating_init(upgraders:httpEncoder:extraHTTPHandlers:upgradeCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  HTTPServerUpgradeHandler.init(upgraders:httpEncoder:extraHTTPHandlers:upgradeCompletionHandler:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t HTTPServerUpgradeHandler.init(upgraders:httpEncoder:extraHTTPHandlers:upgradeCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = sub_10002EC5C(0x10uLL);
  *(v5 + 88) = v11;
  *(v5 + 96) = v12;
  v41 = *(a1 + 16);
  if (v41)
  {
    v37 = a4;
    v38 = a2;
    v39 = a5;
    v40 = a3;
    v13 = 0;
    v14 = a1 + 32;
    v15 = _swiftEmptyDictionarySingleton;
    while (v13 < *(a1 + 16))
    {
      sub_100026064(v14, &v44);
      v16 = v45;
      v17 = v46;
      sub_10001AE68(&v44, v45);
      (*(v17 + 8))(v16, v17);
      v18 = sub_1001F6BB8();
      v20 = v19;

      sub_10002DD3C(&v44, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v15;
      sub_10007B9BC();
      v22 = sub_10011108C();
      v24 = v15[2];
      v25 = (v23 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_17;
      }

      v27 = v22;
      v28 = v23;
      sub_1000183C4(&qword_1002B4420);
      if (sub_1001F7A98(isUniquelyReferenced_nonNull_native, v26))
      {
        sub_10007B9BC();
        v29 = sub_10011108C();
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_19;
        }

        v27 = v29;
      }

      if (v28)
      {

        v15 = v42;
        v31 = v42[7] + 40 * v27;
        sub_100019CCC(v31);
        sub_10002DD3C(v43, v31);
      }

      else
      {
        v15 = v42;
        v42[(v27 >> 6) + 8] |= 1 << v27;
        v32 = (v42[6] + 16 * v27);
        *v32 = v18;
        v32[1] = v20;
        sub_10002DD3C(v43, v42[7] + 40 * v27);
        v33 = v42[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_18;
        }

        v42[2] = v35;
      }

      ++v13;
      v14 += 40;
      if (v41 == v13)
      {

        a3 = v40;
        a2 = v38;
        a5 = v39;
        a4 = v37;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1001F7FC8();
    __break(1u);
  }

  else
  {

    v15 = _swiftEmptyDictionarySingleton;
LABEL_15:
    *(v5 + 16) = v15;
    *(v5 + 24) = a4;
    *(v5 + 32) = a5;
    *(v5 + 40) = a2;
    *(v5 + 48) = a3;
    return v5;
  }

  return result;
}

void HTTPServerUpgradeHandler.channelRead(context:data:)(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    sub_1000183C4(&qword_1002ADD40);
    sub_1000375EC();
    v8 = v7;
    v9 = HIBYTE(v7);
    v10 = *(v2 + 64);
    switch(v10)
    {
      case 0uLL:
        sub_10010F244(a1, v5, v6, v7);
        goto LABEL_13;
      case 1uLL:
        if (v9 != 2)
        {
          goto LABEL_13;
        }

        v16 = sub_10007B9BC();
        sub_100037548(v16, v17, v8, 2);
        *(v2 + 56) = 1;
        goto LABEL_3;
      case 2uLL:
        __break(1u);
        goto LABEL_17;
      case 3uLL:
        ChannelHandlerContext.fireChannelRead(_:)();
        goto LABEL_13;
      case 4uLL:
LABEL_17:
        __break(1u);
        JUMPOUT(0x10010F230);
      default:
        if (v9 == 2)
        {
          *(v2 + 56) = 1;

          v10(v11);
          v12 = sub_10007B9BC();
          sub_100037548(v12, v13, v8, 2);
          sub_1000814C0();

          sub_10011202C(v14);
        }

        else
        {
LABEL_13:
          sub_10007B9BC();
          sub_1000814C0();

          sub_100037548(v18, v19, v20, v21);
        }

        return;
    }
  }

  swift_beginAccess();
  sub_10002F1C8(a2);
  swift_endAccess();
LABEL_3:
  sub_1000814C0();
}

void sub_10010F244(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (HIBYTE(a4))
  {
    sub_100112394();
    swift_allocError();
    ChannelHandlerContext.fireErrorCaught(_:)();

    sub_10010F780(a1, a2, a3, a4);
  }

  else
  {

    HTTPHeaders.subscript.getter();
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12)
    {
      v25 = v5;
      v26 = a3;
      v27 = a2;
      sub_1000375CC(0, v12, 0);
      v13 = 0;
      v14 = v11 + 56;
      while (v13 < *(v11 + 16))
      {

        v15 = sub_1001F6BE8();
        v17 = v16;

        v19 = _swiftEmptyArrayStorage[2];
        v18 = _swiftEmptyArrayStorage[3];
        if (v19 >= v18 >> 1)
        {
          sub_1000375CC(v18 > 1, v19 + 1, 1);
        }

        ++v13;
        _swiftEmptyArrayStorage[2] = v19 + 1;
        v20 = &_swiftEmptyArrayStorage[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
        v14 += 32;
        if (v12 == v13)
        {

          a3 = v26;
          a2 = v27;
          v5 = v25;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    else
    {

LABEL_13:
      if (_swiftEmptyArrayStorage[2])
      {
        v21 = *(v5 + 64);
        *(v5 + 64) = xmmword_100206DF0;
        sub_10011202C(v21);
        sub_10010F8E4(a1, a2, a3, a4, _swiftEmptyArrayStorage);

        v22 = *(*(a1 + 32) + 56);
        v23 = swift_unknownObjectRetain();
        sub_1001509C0(v23, v22);

        swift_unknownObjectRelease();
        v24 = swift_allocObject();
        *(v24 + 16) = a1;
        *(v24 + 24) = v5;
        *(v24 + 32) = a2;
        *(v24 + 40) = a3;
        *(v24 + 54) = BYTE6(a4);
        *(v24 + 52) = WORD2(a4);
        *(v24 + 48) = a4;
        *(v24 + 55) = 0;
        sub_1000811E4(a2, a3, a4, 0);

        sub_10011FAE0();
      }

      else
      {

        sub_10010F780(a1, a2, a3, a4);
      }
    }
  }
}

void HTTPServerUpgradeHandler.removeHandler(context:removalToken:)()
{
  swift_beginAccess();
LABEL_2:
  v1 = v0[11];
  v2 = v0[12];
  v3 = v2 - v1;
  if (v2 < v1)
  {
    v3 += *(v0[10] + 16);
  }

  if (v3 < 1)
  {
    ChannelHandlerContext.leavePipeline(removalToken:)();
  }

  else
  {
    while (1)
    {
      v4 = v0[10];
      v5 = v2 - v1;
      if (v2 < v1)
      {
        v5 += *(v4 + 16);
      }

      if (v5 <= 0)
      {
        ChannelHandlerContext.fireChannelReadComplete()();
        goto LABEL_2;
      }

      swift_beginAccess();
      if (v2 == v1)
      {
        break;
      }

      if ((v1 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      if (HIDWORD(v1))
      {
        goto LABEL_25;
      }

      v6 = *(v4 + 16);
      if (v1 >= v6)
      {
        goto LABEL_26;
      }

      sub_100112040(v4 + (v1 << 6) + 32, &v10);
      if (v12[24] == 255)
      {
        goto LABEL_29;
      }

      v13[0] = v10;
      v13[1] = v11;
      v14[0] = *v12;
      *(v14 + 9) = *&v12[9];
      if (v2 >= v1)
      {
        v7 = 0;
      }

      else
      {
        v7 = v6;
      }

      if ((v2 - v1 + v7) < 1)
      {
        goto LABEL_27;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[10] = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100111F84();
        v4 = v9;
      }

      v11 = 0u;
      memset(v12, 0, 24);
      v10 = 0u;
      v12[24] = -1;
      v0[10] = v4;
      if (v1 >= *(v4 + 16))
      {
        goto LABEL_28;
      }

      sub_10008142C(&v10, v4 + (v1 << 6) + 32);
      v0[10] = v4;
      v0[11] = (*(v4 + 16) + 0x1FFFFFFFFLL) & (v1 + 1);
      swift_endAccess();
      ChannelHandlerContext.fireChannelRead(_:)();
      sub_100034310(v13);
      v1 = v0[11];
      v2 = v0[12];
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_10010F780(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = HIBYTE(a4);
  v9 = *(v4 + 64);
  *(v4 + 64) = xmmword_100206E20;
  sub_10011202C(v9);
  if (*(v4 + 56))
  {
    v10 = sub_1000183C4(&qword_1002ADD40);
    v13 = v10;
    *v11 = a2;
    *&v11[8] = a3;
    v11[22] = BYTE6(a4);
    *&v11[20] = WORD2(a4);
    *&v11[16] = a4;
    v12 = v8;
    v14 = 2;
    sub_1000811E4(a2, a3, a4, v8);
    ChannelHandlerContext.fireChannelRead(_:)();
    sub_100034310(v11);
    v13 = v10;
    memset(v11, 0, sizeof(v11));
    v12 = 2;
    v14 = 2;
  }

  else
  {
    v13 = sub_1000183C4(&qword_1002ADD40);
    *v11 = a2;
    *&v11[8] = a3;
    v11[22] = BYTE6(a4);
    *&v11[20] = WORD2(a4);
    *&v11[16] = a4;
    v12 = v8;
    v14 = 2;
    sub_1000811E4(a2, a3, a4, v8);
  }

  ChannelHandlerContext.fireChannelRead(_:)();
  sub_100034310(v11);
  ChannelHandlerContext.fireChannelReadComplete()();
  ChannelPipeline.removeHandler(context:promise:)();
}

uint64_t sub_10010F8E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  HTTPHeaders.subscript.getter();
  v8 = v7;
  v9 = *(v7 + 16);
  v34 = a4;
  if (v9)
  {
    sub_1000375CC(0, v9, 0);
    v10 = v8 + 56;
    do
    {

      v11 = sub_1001F74E8();
      v13 = v12;

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1000375CC(v14 > 1, v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      v10 += 32;
      --v9;
    }

    while (v9);

    a4 = v34;
  }

  else
  {
  }

  v17 = sub_1001B8580(_swiftEmptyArrayStorage);
  v18 = *(a3 + 16);
  v19 = sub_10007012C(0, v18);
  if (v19)
  {
    v20 = v19;
    result = sub_1000375CC(0, v19 & ~(v19 >> 63), 0);
    if ((v20 & 0x8000000000000000) == 0)
    {
      v22 = a3 + 40;
      while (v18)
      {
        result = sub_1001F6BB8();
        v23 = result;
        v25 = v24;
        v27 = _swiftEmptyArrayStorage[2];
        v26 = _swiftEmptyArrayStorage[3];
        if (v27 >= v26 >> 1)
        {
          result = sub_1000375CC(v26 > 1, v27 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v27 + 1;
        v28 = &_swiftEmptyArrayStorage[2 * v27];
        v28[4] = v23;
        v28[5] = v25;
        --v18;
        v22 += 32;
        if (!--v20)
        {
          a4 = v34;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v29 = sub_1001B8580(_swiftEmptyArrayStorage);
    v30 = sub_10010FC80(a1, a5, 0, a2, a3, a4, v29, v17);

    return v30;
  }

  return result;
}

void sub_10010FB40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
    sub_10003742C(*a1);

    sub_10010FBC0(a3, v7, v8);
  }

  else
  {
    sub_10010F780(a2, a4, a5, a6);
  }
}

uint64_t sub_10010FBC0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = sub_100112490;
    *(a1 + 72) = result;
    if (*(a1 + 56) == 1)
    {

      a2(v7);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010FC80(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = *(a2 + 16);
  if (v10 != a3)
  {
    if (v10 <= a3)
    {
      __break(1u);
      return result;
    }

    v13 = v8;
    v17 = a2;
    v18 = a2 + 16 * a3;
    v19 = *(v18 + 40);
    v20 = *(v8 + 16);
    v55 = *(v18 + 32);
    sub_1001F6BB8();

    sub_1001F1230(v20, &v60);

    if (!v61)
    {

      sub_100112498(&v60);
      v33 = sub_1001128E8();
      return sub_10010FC80(v33, v34, v35, v36, a5, a6, a7, a8);
    }

    v56 = a7;
    sub_10002DD3C(&v60, v62);
    v21 = v63;
    v22 = v64;
    sub_10001AE68(v62, v63);
    v23 = (*(v22 + 16))(v21, v22);
    v24 = *(v23 + 16);
    if (v24)
    {
      v49 = a4;
      v50 = v8;
      v51 = v17;
      v53 = v9;
      *&v60 = _swiftEmptyArrayStorage;
      sub_1000375CC(0, v24, 0);
      v25 = v60;
      v26 = v23 + 40;
      do
      {
        v27 = sub_1001F6BB8();
        v29 = v28;
        *&v60 = v25;
        v31 = v25[2];
        v30 = v25[3];
        if (v31 >= v30 >> 1)
        {
          sub_1000375CC(v30 > 1, v31 + 1, 1);
          v25 = v60;
        }

        v25[2] = v31 + 1;
        v32 = &v25[2 * v31];
        v32[4] = v27;
        v32[5] = v29;
        v26 += 16;
        --v24;
      }

      while (v24);

      v13 = v50;
      v17 = v51;
      v9 = v53;
      a4 = v49;
    }

    else
    {

      v25 = _swiftEmptyArrayStorage;
    }

    v37 = sub_1001B8580(v25);
    if (sub_100110224(v56, v37))
    {
      v38 = sub_100110224(a8, v37);

      if (v38)
      {
        sub_1001103E4(v55, v19);
        v52 = v17;
        v39 = v64;
        sub_10001AE68(v62, v63);
        v40 = sub_10009B39C();
        v54 = v9;
        (*(v39 + 24))(v40);
        swift_unknownObjectRelease();

        sub_100026064(v62, &v60);
        v41 = swift_allocObject();
        *(v41 + 16) = v13;
        *(v41 + 24) = v9;
        *(v41 + 32) = a4;
        *(v41 + 40) = a5;
        *(v41 + 48) = a6;
        sub_10002DD3C(&v60, v41 + 56);
        *(v41 + 96) = v55;
        *(v41 + 104) = v19;

        v42 = sub_10019F760();

        v44 = *(v42 + 40);
        v43 = *(v42 + 48);
        sub_1000183C4(&qword_1002B4568);
        swift_allocObject();
        v12 = sub_10016E918(v44, v43, 0, 0, 255);
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_retain_n();

        swift_unknownObjectRetain();
        sub_10011F1AC(v42, v42, v12, v54, v13, v52, a3 + 1, a4, a5, a6, v56, a8);

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

LABEL_19:
        sub_100019CCC(v62);
        return v12;
      }
    }

    else
    {
    }

    v45 = sub_1001128E8();
    v12 = sub_10010FC80(v45, v46, v47, v48, a5, a6, v56, a8);
    goto LABEL_19;
  }

  swift_getObjectType();
  v62[0] = 0;
  v62[1] = 0;
  swift_unknownObjectRetain();
  sub_1000183C4(&qword_1002ADD88);
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  v12 = v11;
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_100110224(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_1001F8068();

        sub_1001F6C28();
        v17 = sub_1001F80D8();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_1001F7EA8();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001103E4(uint64_t a1, uint64_t a2)
{
  sub_1000183C4(&qword_1002AC840);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001FEBE0;
  *(v4 + 32) = 0x697463656E6E6F63;
  *(v4 + 40) = 0xEA00000000006E6FLL;
  *(v4 + 48) = 0x65646172677075;
  *(v4 + 56) = 0xE700000000000000;
  *(v4 + 64) = 0x65646172677075;
  *(v4 + 72) = 0xE700000000000000;
  *(v4 + 80) = a1;
  *(v4 + 88) = a2;

  return v4;
}

uint64_t sub_10011048C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>, uint64_t a10)
{
  v16 = *a1;
  v17 = *(a1 + 8);
  sub_100026064(a7, v21);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = v16;
  *(v18 + 64) = v17;
  sub_10002DD3C(v21, v18 + 72);
  *(v18 + 112) = a8;
  *(v18 + 120) = a10;
  *a9 = sub_100112600;
  a9[1] = v18;
}

uint64_t sub_100110588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(a1 + 64);
  *(a1 + 64) = xmmword_100206E10;
  sub_10011202C(v17);
  v18 = sub_100110984(a2);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;

  v20 = sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPServerUpgradeHandler.swift", 126, 2, 229, v18, sub_100112698, v19);

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPServerUpgradeHandler.swift", 126, 2, 231, v20, sub_1001126D4, v21);

  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1001126DC;
  *(v23 + 24) = v22;

  v24 = sub_10019F6C8();

  sub_100026064(a8, v30);
  v25 = swift_allocObject();
  sub_10002DD3C(v30, v25 + 16);
  *(v25 + 56) = a2;
  *(v25 + 64) = a3;
  *(v25 + 72) = a4;
  *(v25 + 80) = a5;

  sub_100112C28("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPServerUpgradeHandler.swift", 126, 2, 235, v24, sub_100112758, v25);

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a9;
  *(v26 + 32) = a10;
  *(v26 + 40) = a3;
  *(v26 + 48) = a4;
  *(v26 + 56) = a5;
  *(v26 + 64) = a1;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1001127C4;
  *(v27 + 24) = v26;

  sub_10019F6C8();

  swift_retain_n();

  sub_10011DE78();
}

uint64_t sub_100110984(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_1001F78C8();
    v5 = v3 + 40;
    do
    {
      swift_unknownObjectRetain();
      ChannelPipeline.removeHandler(_:)();
      swift_unknownObjectRelease();
      sub_1001F7878();
      sub_1001F7908();
      sub_1001F7918();
      sub_1001F7898();
      v5 += 16;
      --v4;
    }

    while (v4);
    v6 = *(*(a1 + 32) + 56);
    ObjectType = swift_getObjectType();
    v8 = EventLoop.makePromise<A>(of:file:line:)(&type metadata for ()[8], "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 1084, ObjectType, &type metadata for ()[8], v6);
    swift_unknownObjectRetain();
    sub_100110F70(_swiftEmptyArrayStorage, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v8 = v9;
    swift_unknownObjectRelease();
  }

  return v8;
}

uint64_t sub_100110B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  type metadata accessor for HTTPResponseHead._Storage();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;
  *(v8 + 40) = 65537;
  v15 = sub_1000183C4(&qword_1002ADA10);
  v12[0] = v8;
  v12[1] = a5;
  v13 = a6;
  v14 = 0;
  v16 = 2;
  sub_100030794();
  v10 = v9;

  ChannelHandlerContext.writeAndFlush(_:promise:)();

  sub_100034310(v12);
  return v10;
}

uint64_t sub_100110C08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);

  v4 = sub_100110C70(a2, v3);

  return v4;
}

uint64_t sub_100110C70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();
    ChannelPipeline.removeHandler(_:)();
    v3 = v2;
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v6 = v5;
    swift_unknownObjectRelease();
    return v6;
  }
}

uint64_t sub_100110D20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[3];
  v10 = a1[4];
  sub_10001AE68(a1, v9);
  return (*(v10 + 32))(a2, a3, a4, a5, v9, v10);
}

unint64_t sub_100110D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v16[3] = &type metadata for HTTPServerUpgradeEvents;
  v13 = swift_allocObject();
  v16[0] = v13;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;

  ChannelHandlerContext.fireUserInboundEventTriggered(_:)();
  sub_100019CCC(v16);
  v14 = *(a7 + 64);
  *(a7 + 64) = xmmword_100206E30;
  return sub_10011202C(v14);
}

uint64_t HTTPServerUpgradeHandler.deinit()
{

  sub_10011202C(*(v0 + 64));

  return v0;
}

uint64_t HTTPServerUpgradeHandler.__deallocating_deinit()
{
  HTTPServerUpgradeHandler.deinit();

  return swift_deallocClassInstance();
}

void sub_100110F70(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  if ((*(v4 + 16))(ObjectType, v4))
  {
    sub_10007B9BC();

    sub_100128958();
  }

  else
  {
    v7 = swift_allocObject();
    v7[2] = a2;
    v7[3] = a1;
    v7[4] = v5;
    v7[5] = v4;
    v8 = *(v4 + 24);

    swift_unknownObjectRetain();
    v8(sub_10011286C, v7, ObjectType, v4);
  }
}

unint64_t sub_10011108C()
{
  sub_1001128B0();
  sub_1001F6C28();
  v2 = sub_1001F80D8();

  return sub_100111328(v1, v0, v2);
}

unint64_t sub_1001110F0(char a1)
{
  sub_1001F8068();
  sub_10013EBCC(a1);
  sub_10011288C();

  v2 = sub_1001F80D8();

  return sub_1001113DC(a1, v2);
}

unint64_t sub_100111164(uint64_t a1)
{
  v2 = sub_1001F8058();

  return sub_1001114D4(a1, v2);
}

unint64_t sub_1001111A8()
{
  sub_1001128B0();
  HTTPMethod.rawValue.getter(v1, v0);
  sub_10011288C();

  v2 = sub_1001F80D8();

  return sub_100111534(v1, v0, v2);
}

unint64_t sub_100111214()
{
  sub_1001128FC();
  type metadata accessor for CFString(0);
  sub_10011233C();
  sub_1001F6648();
  v1 = sub_1001F80D8();

  return sub_100111D78(v0, v1);
}

unint64_t sub_100111288(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F7738(*(v2 + 40));

  return sub_100111E48(a1, v4);
}

unint64_t sub_1001112D0()
{
  sub_1001128FC();
  sub_1001F8088(v0);
  v1 = sub_1001F80D8();
  return sub_1001114D4(v0, v1);
}

unint64_t sub_100111328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1001F7EA8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1001113DC(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_10013EBCC(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_10013EBCC(a1) && v8 == v9)
    {

      return i;
    }

    v11 = sub_1001F7EA8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1001114D4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_100111534(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v22 = ~v4;
    while (1)
    {
      v8 = (*(v3 + 48) + 16 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = 0xE300000000000000;
      v12 = 5522759;
      switch(v10)
      {
        case 0uLL:
          break;
        case 1uLL:
          v12 = 5526864;
          break;
        case 2uLL:
          v12 = 4997953;
          break;
        case 3uLL:
          v11 = 0xE400000000000000;
          v12 = 1145128264;
          break;
        case 4uLL:
          v11 = 0xE400000000000000;
          v12 = 1414745936;
          break;
        case 5uLL:
          v11 = 0xE400000000000000;
          v12 = 1498435395;
          break;
        case 6uLL:
          v11 = 0xE400000000000000;
          v12 = 1262702412;
          break;
        case 7uLL:
          v11 = 0xE400000000000000;
          v12 = 1163284301;
          break;
        case 8uLL:
          v11 = 0xE400000000000000;
          v12 = 1145981250;
          break;
        case 9uLL:
          v11 = 0xE400000000000000;
          v12 = 1263421772;
          break;
        case 0xAuLL:
          v11 = 0xE500000000000000;
          v12 = 0x4843544150;
          break;
        case 0xBuLL:
          v11 = 0xE500000000000000;
          v14 = 1128354388;
          goto LABEL_26;
        case 0xCuLL:
          v11 = 0xE500000000000000;
          v12 = 0x4C4F434B4DLL;
          break;
        case 0xDuLL:
          v11 = 0xE500000000000000;
          v13 = 17741;
          goto LABEL_25;
        case 0xEuLL:
          v11 = 0xE500000000000000;
          v13 = 21840;
LABEL_25:
          v14 = v13 & 0xFFFFFFFF0000FFFFLL | 0x47520000;
LABEL_26:
          v12 = v14 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
          break;
        case 0xFuLL:
          v11 = 0xE600000000000000;
          v12 = 0x594649544F4ELL;
          break;
        case 0x10uLL:
          v11 = 0xE600000000000000;
          v12 = 0x484352414553;
          break;
        case 0x11uLL:
          v11 = 0xE600000000000000;
          v12 = 0x4B434F4C4E55;
          break;
        case 0x12uLL:
          v11 = 0xE600000000000000;
          v12 = 0x444E49424552;
          break;
        case 0x13uLL:
          v12 = 0x444E49424E55;
          v11 = 0xE600000000000000;
          break;
        case 0x14uLL:
          v11 = 0xE600000000000000;
          v12 = 0x54524F504552;
          break;
        case 0x15uLL:
          v11 = 0xE600000000000000;
          v12 = 0x4554454C4544;
          break;
        case 0x16uLL:
          v11 = 0xE600000000000000;
          v12 = 0x4B4E494C4E55;
          break;
        case 0x17uLL:
          v11 = 0xE700000000000000;
          v12 = 0x5443454E4E4F43;
          break;
        case 0x18uLL:
          v11 = 0xE700000000000000;
          v12 = 0x4843524145534DLL;
          break;
        case 0x19uLL:
          v11 = 0xE700000000000000;
          v12 = 0x534E4F4954504FLL;
          break;
        case 0x1AuLL:
          v11 = 0xE800000000000000;
          v12 = 0x444E4946504F5250;
          break;
        case 0x1BuLL:
          v11 = 0xE800000000000000;
          v12 = 0x54554F4B43454843;
          break;
        case 0x1CuLL:
          v12 = 0x43544150504F5250;
          v11 = 0xE900000000000048;
          break;
        case 0x1DuLL:
          v12 = 0x4249524353425553;
          v11 = 0xE900000000000045;
          break;
        case 0x1EuLL:
          v12 = 0x444E454C41434B4DLL;
          v11 = 0xEA00000000005241;
          break;
        case 0x1FuLL:
          v12 = 0x4956495443414B4DLL;
          v11 = 0xEA00000000005954;
          break;
        case 0x20uLL:
          v12 = 0x5243534255534E55;
          v11 = 0xEB00000000454249;
          break;
        case 0x21uLL:
          v11 = 0xE600000000000000;
          v12 = 0x454352554F53;
          break;
        default:
          v12 = *v8;
          v11 = v8[1];
          break;
      }

      v15 = 0xE300000000000000;
      v16 = 5522759;
      switch(a2)
      {
        case 0uLL:
          break;
        case 1uLL:
          v16 = 5526864;
          break;
        case 2uLL:
          v16 = 4997953;
          break;
        case 3uLL:
          v15 = 0xE400000000000000;
          v16 = 1145128264;
          break;
        case 4uLL:
          v15 = 0xE400000000000000;
          v16 = 1414745936;
          break;
        case 5uLL:
          v15 = 0xE400000000000000;
          v16 = 1498435395;
          break;
        case 6uLL:
          v15 = 0xE400000000000000;
          v16 = 1262702412;
          break;
        case 7uLL:
          v15 = 0xE400000000000000;
          v16 = 1163284301;
          break;
        case 8uLL:
          v15 = 0xE400000000000000;
          v16 = 1145981250;
          break;
        case 9uLL:
          v15 = 0xE400000000000000;
          v16 = 1263421772;
          break;
        case 0xAuLL:
          v15 = 0xE500000000000000;
          v16 = 0x4843544150;
          break;
        case 0xBuLL:
          v15 = 0xE500000000000000;
          v18 = 1128354388;
          goto LABEL_63;
        case 0xCuLL:
          v15 = 0xE500000000000000;
          v16 = 0x4C4F434B4DLL;
          break;
        case 0xDuLL:
          v15 = 0xE500000000000000;
          v17 = 17741;
          goto LABEL_62;
        case 0xEuLL:
          v15 = 0xE500000000000000;
          v17 = 21840;
LABEL_62:
          v18 = v17 & 0xFFFFFFFF0000FFFFLL | 0x47520000;
LABEL_63:
          v16 = v18 & 0xFFFF0000FFFFFFFFLL | 0x4500000000;
          break;
        case 0xFuLL:
          v15 = 0xE600000000000000;
          v16 = 0x594649544F4ELL;
          break;
        case 0x10uLL:
          v15 = 0xE600000000000000;
          v16 = 0x484352414553;
          break;
        case 0x11uLL:
          v15 = 0xE600000000000000;
          v16 = 0x4B434F4C4E55;
          break;
        case 0x12uLL:
          v15 = 0xE600000000000000;
          v16 = 0x444E49424552;
          break;
        case 0x13uLL:
          v16 = 0x444E49424E55;
          v15 = 0xE600000000000000;
          break;
        case 0x14uLL:
          v15 = 0xE600000000000000;
          v16 = 0x54524F504552;
          break;
        case 0x15uLL:
          v15 = 0xE600000000000000;
          v16 = 0x4554454C4544;
          break;
        case 0x16uLL:
          v15 = 0xE600000000000000;
          v16 = 0x4B4E494C4E55;
          break;
        case 0x17uLL:
          v15 = 0xE700000000000000;
          v16 = 0x5443454E4E4F43;
          break;
        case 0x18uLL:
          v15 = 0xE700000000000000;
          v16 = 0x4843524145534DLL;
          break;
        case 0x19uLL:
          v15 = 0xE700000000000000;
          v16 = 0x534E4F4954504FLL;
          break;
        case 0x1AuLL:
          v15 = 0xE800000000000000;
          v16 = 0x444E4946504F5250;
          break;
        case 0x1BuLL:
          v15 = 0xE800000000000000;
          v16 = 0x54554F4B43454843;
          break;
        case 0x1CuLL:
          v16 = 0x43544150504F5250;
          v15 = 0xE900000000000048;
          break;
        case 0x1DuLL:
          v16 = 0x4249524353425553;
          v15 = 0xE900000000000045;
          break;
        case 0x1EuLL:
          v16 = 0x444E454C41434B4DLL;
          v15 = 0xEA00000000005241;
          break;
        case 0x1FuLL:
          v16 = 0x4956495443414B4DLL;
          v15 = 0xEA00000000005954;
          break;
        case 0x20uLL:
          v16 = 0x5243534255534E55;
          v15 = 0xEB00000000454249;
          break;
        case 0x21uLL:
          v15 = 0xE600000000000000;
          v16 = 0x454352554F53;
          break;
        default:
          v16 = a1;
          v15 = a2;
          break;
      }

      if (v12 == v16 && v11 == v15)
      {
        break;
      }

      v20 = sub_1001F7EA8();
      sub_10005E2E0(v9, v10);
      sub_10005E2E0(v9, v10);
      sub_10005E2E0(a1, a2);

      sub_10005E2F4(v9, v10);
      if ((v20 & 1) == 0)
      {
        v5 = (v5 + 1) & v22;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }

    sub_10005E2E0(v9, v10);
    sub_10005E2E0(v9, v10);
    sub_10005E2E0(a1, a2);

    sub_10005E2F4(v9, v10);
  }

  return v5;
}

unint64_t sub_100111D78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = *(*(v3 + 48) + 8 * i);
    type metadata accessor for CFString(0);
    sub_10011233C();
    v8 = v7;
    v9 = sub_1001F6638();

    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100111E48(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1001122E0(*(v2 + 48) + 40 * i, v7);
    v5 = sub_1001F7748();
    sub_10003A1F8(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10011202C(unint64_t result)
{
  if (result >= 5)
  {
  }

  return result;
}

uint64_t sub_100112040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001120B4()
{
  result = qword_1002B4428;
  if (!qword_1002B4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4428);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HTTPServerUpgradeErrors(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001121A4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100112210(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100112228(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100112280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_10011233C()
{
  result = qword_1002B4550;
  if (!qword_1002B4550)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4550);
  }

  return result;
}

unint64_t sub_100112394()
{
  result = qword_1002B4558;
  if (!qword_1002B4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4558);
  }

  return result;
}

uint64_t sub_1001123E8()
{

  sub_100037548(*(v0 + 32), *(v0 + 40), *(v0 + 48) | ((*(v0 + 52) | (*(v0 + 54) << 16)) << 32), *(v0 + 55));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100112458()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100112498(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B4560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100112500()
{

  sub_100019CCC(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100112598()
{

  sub_100019CCC(v0 + 72);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100112640()
{

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100112708()
{
  sub_100019CCC(v0 + 16);

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_10011276C()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001127DC()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100112824()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10011288C()
{

  return sub_1001F6C28();
}

uint64_t sub_1001128B0()
{

  return sub_1001F8068();
}

uint64_t sub_1001128FC()
{

  return sub_1001F8068();
}

uint64_t EventLoopPromise.succeed(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100019BC4(&qword_1002ACE88);
  sub_10010B19C();
  sub_1001F8158();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v5, v6);
  v8 = &v13 - v7;
  sub_10007E2C8();
  (*(v9 + 16))(v8, a1, a3);
  sub_10007B9BC();
  swift_storeEnumTagMultiPayload();
  EventLoopPromise._resolve(value:)();
  v10 = sub_10007B9BC();
  return v11(v10);
}

uint64_t EventLoopPromise.fail(_:)(uint64_t a1)
{
  sub_100019BC4(&qword_1002ACE88);
  sub_10010B19C();
  sub_1001F8158();
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v2, v3);
  *(&v8 - v4) = a1;
  sub_10007B9BC();
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  EventLoopPromise._resolve(value:)();
  v5 = sub_10007B9BC();
  return v6(v5);
}

uint64_t EventLoopFuture.cascadeFailure<A>(to:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    v5 = *v2;
    sub_1000A41C8();
    v6 = swift_allocObject();
    v6[2] = *(v5 + 80);
    v6[3] = a2;
    v6[4] = v4;
    sub_1000A3FAC();
    swift_retain_n();
    v7 = sub_10012F37C();
    EventLoopFuture.whenFailure(_:)(v7, v8);
  }

  return result;
}

uint64_t sub_100112C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5, void (*a6)(uint64_t, __n128 *, uint64_t))
{
  sub_1000183C4(&qword_1002B46D8);
  v8 = sub_10012F8DC();
  sub_10012EEF4(v8, a5[2]);
  sub_10012F78C();

  a6(v9, a5, v8);

  return v8;
}

__n128 *sub_100112CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  sub_1000183C4(&qword_1002ADC18);
  sub_10012F1DC();
  v6 = swift_allocObject();
  sub_10012F094(v6, a5[2]);

  sub_10012F78C();
  sub_100121D68(a5, a5, v6);

  return v6;
}

uint64_t EventLoopFuture.whenComplete(_:)()
{
  sub_100037B94();
  sub_1000A41C8();
  v1 = swift_allocObject();
  *(sub_10012F744(v1) + 32) = v0;

  sub_10012F998();
  EventLoopFuture._whenComplete(_:)();
}

void sub_100112E54(uint64_t a1)
{
  v2 = sub_1001135DC();
  v4 = v3;
  v6 = v5;
  v7 = 0;
  v8 = a1 + 40;
  while (2)
  {
    for (i = (v8 + 16 * v7); ; i += 2)
    {
      v10 = *(a1 + 16);
      if (v7 == v10)
      {

        return;
      }

      if (v7 >= v10)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v12 = *(i - 1);
      v11 = *i;
      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100111F3C();
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v6 >= v2[2])
      {
        goto LABEL_19;
      }

      v13 = &v2[2 * v6 + 4];
      sub_100037408(*v13);
      *v13 = v12;
      v13[1] = v11;
      v14 = v2[2];
      v6 = (v14 + 0x7FFFFFFFFFFFFFFFLL) & (v6 + 1);
      if (v4 == v6)
      {
        break;
      }

      ++v7;
    }

    v15 = 2 * v14;
    if (2 * v14 < 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_1000375D4(0);
    if (v2[2] < v4)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_100116AC8();
    if (v2[2] < v4)
    {
LABEL_22:
      __break(1u);
      break;
    }

    sub_100116AC8();
    v6 = _swiftEmptyArrayStorage[2];
    if ((v15 - v6) >= 0)
    {
      ++v7;
      sub_100116BF4(v15 - v6, 0, 0);

      v4 = 0;
      v8 = a1 + 40;
      v2 = _swiftEmptyArrayStorage;
      continue;
    }

    break;
  }

  __break(1u);
}

uint64_t sub_100113068(uint64_t result)
{
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  while (v4 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v5 = v1[2];
    v6 = *v1;
    v10 = *(v2 + 16 * v3 + 32);
    swift_retain_n();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100111F3C();
      v6 = result;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    if (v5 >= *(v6 + 16))
    {
      goto LABEL_16;
    }

    v7 = v6 + 16 * v5;
    v8 = *(v7 + 32);
    *(v7 + 32) = v10;
    sub_100037408(v8);
    *v1 = v6;
    v9 = (*(v6 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v5 + 1);
    v1[2] = v9;
    if (v1[1] == v9)
    {
      sub_100113CFC();
    }

    ++v3;
  }
}

void sub_100113180()
{
  sub_10001A1F0();
  v37 = v2;
  if (v1)
  {
    v3 = v0;
    v4 = v1;
    v5 = v1 & ~(v1 >> 63);
    while (1)
    {
      if (!v5)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
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
        v35 = 1;
        goto LABEL_73;
      }

      v7 = *(v3 + 24);
      v6 = *(v3 + 32);
      if (v6 < v7)
      {
        goto LABEL_51;
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_52;
      }

      v9 = *(v3 + 12);
      v10 = v9 - v6;
      if (__OFSUB__(v9, v6))
      {
        goto LABEL_53;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v10)
      {
        v38 = v4;
        v11 = *(v3 + 8);
        if (v6 < v11)
        {
          goto LABEL_71;
        }

        if (__OFADD__(v6, v10))
        {
          goto LABEL_58;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (__OFADD__(v8, v10))
          {
            goto LABEL_63;
          }

          if (v9 <= v8 + v10)
          {
            v12 = v8 + v10;
          }

          else
          {
            v12 = v9;
          }

          v13 = *(v3 + 22) | (*(v3 + 20) << 8);
          LODWORD(v14) = *(v3 + 16);
          if (v14 < v13)
          {
            goto LABEL_64;
          }

          if (__CFADD__(v13, v14 - v13))
          {
            goto LABEL_65;
          }

          v15 = v13 + v12;
          if (__CFADD__(v13, v12))
          {
            goto LABEL_66;
          }

          if (v15 >= v14)
          {
            v14 = v14;
          }

          else
          {
            v14 = v15;
          }

          if (v14 < v13)
          {
            goto LABEL_67;
          }

          v16 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v13 | (v14 << 32), v12);

          *v3 = v16;
          *(v3 + 8) = v11;
          *(v3 + 12) = v9;
          *(v3 + 16) = *(v16 + 16);
          *(v3 + 20) = 0;
          *(v3 + 22) = 0;
        }

        if (HIDWORD(v10))
        {
          goto LABEL_59;
        }

        v17 = *(v3 + 20);
        v18 = *(v3 + 22);
        v19 = v18 | (v17 << 8);
        v20 = v19 + v8;
        if (__CFADD__(v19, v8))
        {
          goto LABEL_60;
        }

        v21 = __CFADD__(v20, v10);
        v22 = v20 + v10;
        if (v21)
        {
          goto LABEL_61;
        }

        v23 = *(v3 + 16);
        v24 = *v3;
        if (v23 < v22)
        {
          v25 = *(v24 + 16);
          if (v25 >= v22)
          {
            if (v25 < v19)
            {
              goto LABEL_68;
            }

            *(v3 + 16) = v25;
            LODWORD(v23) = v25;
          }

          else
          {
            if (__CFADD__(v8, v10))
            {
              goto LABEL_69;
            }

            if (v19)
            {
              if (v23 < v19)
              {
                goto LABEL_70;
              }

              v26 = ByteBuffer._Storage.reallocSlice(_:capacity:)(v19 | (v23 << 32), v8 + v10);

              v27 = v26;
              *v3 = v26;
              v24 = v26;
            }

            else
            {
              ByteBuffer._Storage.reallocStorage(capacity:)(v8 + v10);
              v27 = *v3;
            }

            v18 = 0;
            v17 = 0;
            LODWORD(v23) = *(v24 + 16);
            *(v3 + 16) = v23;
            *(v3 + 20) = 0;
            *(v3 + 22) = 0;
            v24 = v27;
          }
        }

        sub_100047940();
        swift_beginAccess();
        v28 = v18 | (v17 << 8);
        v29 = v23 - v28;
        if (v23 < v28)
        {
          goto LABEL_62;
        }

        if ((v6 + 1) < v29)
        {
          v29 = (v6 + 1);
        }

        if (v6 == -1)
        {
          v29 = 0;
        }

        memmove((*(v24 + 24) + v28 + v29), (*(v24 + 24) + v28 + v6), v10);
        v4 = v38;
      }

      sub_10005FFC8(v37, v6);
      v30 = *(v3 + 12);
      v21 = __CFADD__(v30, 1);
      v31 = v30 + 1;
      if (v21)
      {
        goto LABEL_54;
      }

      v32 = *(v3 + 16);
      v33 = *(v3 + 22) | (*(v3 + 20) << 8);
      v21 = v32 >= v33;
      v34 = v32 - v33;
      if (!v21)
      {
        goto LABEL_55;
      }

      if (v34 < v31)
      {
        goto LABEL_56;
      }

      *(v3 + 12) = v31;
      if (v8 < v7)
      {
        goto LABEL_57;
      }

      *(v3 + 24) = v7;
      *(v3 + 32) = v8;
      --v5;
      if (!--v4)
      {
        goto LABEL_49;
      }
    }

    v35 = 0;
LABEL_73:
    sub_100061B5C();
    swift_allocError();
    *v36 = v35;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_49:
    sub_10001A1D4();
  }
}

uint64_t sub_10011349C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 - a2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001134C0(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_100113520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_1000183C4(&qword_1002B46D8);
  v8 = sub_10012F8DC();
  sub_10012EEF4(v8, *(a5 + 40));
  sub_10012F78C();

  sub_100120B40(v9, a5, v8, a6);

  return v8;
}

uint64_t sub_1001135DC()
{
  sub_1000183C4(&qword_1002B46E0);
  v0 = sub_1001F78F8();
  *(v0 + 16) = 16;
  bzero((v0 + 32), 0x100uLL);
  return v0;
}

uint64_t EventLoopFuture.map<A>(file:line:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v10 = *(*v7 + 80);
  v11 = &type metadata for ()[8];
  if (v10 == a7 && a7 == v11)
  {
    sub_10012F98C();
    swift_getFunctionTypeMetadata1();

    swift_dynamicCast();
    sub_100047958();
    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    *(v16 + 24) = v11;
    *(v16 + 32) = v18;
    EventLoopFuture.whenSuccess(_:)(sub_100128918, v16);

    type metadata accessor for EventLoopFuture();
    v14 = swift_dynamicCastClassUnconditional();
  }

  else
  {
    v14 = EventLoopPromise.init(eventLoop:file:line:)(*(v7 + *(*v7 + 96)), *(v7 + *(*v7 + 96) + 8), a1, a2, a3, a4);
    sub_1000A3FC4();
    v15 = swift_allocObject();
    v15[2] = a7;
    v15[3] = v14;
    v15[4] = v7;
    v15[5] = a5;
    v15[6] = a6;

    swift_unknownObjectRetain();

    sub_10012F1E8();
    EventLoopFuture._whenComplete(_:)();
  }

  return v14;
}

uint64_t sub_100113818(void (*a1)(_BYTE *))
{
  v2 = *v1;
  if (*(v1 + 63))
  {
    swift_errorRetain();
  }

  else
  {
    *v7 = *v1;
    *&v7[8] = *(v1 + 1);
    *&v7[24] = *(v1 + 3);
    *&v7[40] = *(v1 + 5);
    *&v7[55] = *(v1 + 55);
    sub_1000ACFAC();
    a1(v7);
    v5[0] = *v7;
    v5[1] = *&v7[16];
    v6[0] = *&v7[32];
    *(v6 + 15) = *&v7[47];
    sub_1000E5E28(v5);
    return 0;
  }

  return v2;
}

uint64_t sub_1001138E8(void (*a1)(void), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    swift_errorRetain();
  }

  else
  {
    a1();
    return 0;
  }

  return a3;
}

uint64_t sub_100113934(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    swift_errorRetain();
  }

  else
  {
    a1(&v6);
    return v6;
  }

  return a3;
}

uint64_t EventLoopFuture.always(_:)()
{
  sub_100037B94();
  v3 = *v1;
  sub_1000A41C8();
  v4 = swift_allocObject();
  v4[2] = *(v3 + 80);
  v4[3] = v2;
  v4[4] = v0;

  sub_10012F37C();
  EventLoopFuture.whenComplete(_:)();
}

uint64_t EventLoopFuture.wait(file:line:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = v4;
  v10 = *v7;
  sub_100019BC4(&qword_1002ACE88);
  sub_1001F8158();
  sub_10012F52C();
  v31 = sub_1001F74B8();
  sub_10002DFFC();
  v12 = v11;
  sub_10001E844();
  __chkstk_darwin(v13, v14);
  sub_10005DBB4();
  v15 = *(v7 + *(v10 + 96) + 8);
  ObjectType = swift_getObjectType();
  (*(v15 + 80))(a1, a2, a3, a4, ObjectType, v15);
  v17 = swift_allocBox();
  v19 = v18;
  v20 = sub_10012F57C(v17, v18);
  sub_100018460(v20, v21, v22, v5);
  sub_1000183C4(&qword_1002B4570);
  sub_1000A41C8();
  swift_allocObject();
  v23 = sub_10012CD34(0);
  sub_1000A41C8();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v17;
  v24[4] = v7;

  sub_10012F37C();
  EventLoopFuture._whenComplete(_:)();

  sub_100127948(1);
  Lock.unlock()();
  sub_100047940();
  swift_beginAccess();
  (*(v12 + 16))(v6, v19, v31);
  v25 = sub_1000D4AC8();
  result = sub_10001C990(v25, v26, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10012F2E8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_willThrow();
    }

    else
    {

      sub_10007E2C8();
      (*(v28 + 32))();
    }
  }

  return result;
}

void sub_100113CFC()
{
  sub_10012EE00();
  if (v1 != v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_10012EF24();
  sub_1000375D4(v3);
  sub_10012F4E4();
  sub_10012EDD0();
  sub_100116AC8();
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v4)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012EDD0();
  sub_10012F304();
  sub_100116AC8();
  sub_10012F310(v5, v6, v7, v8, v9, v10, v11, v12, v21, &_swiftEmptyArrayStorage);
  if (!v1)
  {
    sub_10012EDE8();
    sub_10012F1C4();
    sub_100116870();

    sub_10012F2F4(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100113DE8()
{
  sub_10012EE00();
  if (v1 != v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10012EF24();
  sub_100033FEC();
  sub_10012F4E4();
  sub_100114730();
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v3)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012EF6C();
  sub_100114730();
  sub_10012F310(v4, v5, v6, v7, v8, v9, v10, v11, v21, _swiftEmptyArrayStorage);
  if (!v1)
  {
    sub_100047940();
    sub_1001144E4(v12);

    sub_10012F2F4(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100113EE0()
{
  sub_10012EE00();
  if (v1 != v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10012EF24();
  sub_10003402C();
  sub_10012F4E4();
  sub_100114730();
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v3)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012EF6C();
  sub_100114730();
  sub_10012F310(v4, v5, v6, v7, v8, v9, v10, v11, v23, _swiftEmptyArrayStorage);
  if (!v1)
  {
    sub_10012F1C4();
    sub_100114858(v12, v13, v14, 0);

    sub_10012F2F4(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25);
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100113FD8()
{
  sub_10012EE00();
  if (v2 != v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10012EF24();
  sub_10003406C();
  v4 = sub_10012F4E4();
  sub_100114AFC(v4, v5, v6, v7);
  if ((v0[2] & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v8)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012F304();
  sub_100114AFC(v9, v10, v11, v12);
  v13 = _swiftEmptyArrayStorage[2];
  if (v1 - v13 >= 0)
  {
    v14 = v1 - v13;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    sub_100114C84(&v14);

    v0[1] = 0;
    v0[2] = v13;
    *v0 = _swiftEmptyArrayStorage;
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1001140B0()
{
  sub_10012EE00();
  if (v3 != v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = _swiftEmptyArrayStorage;
  sub_10012EF24();
  sub_1000341A4();
  v5 = sub_10012F4E4();
  sub_10011502C(v5, v6, v7, v8);
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v9)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012F304();
  sub_10011502C(v10, v11, v12, v13);
  sub_10012F3E0();
  v15 = -1;
  if (v1 - v2 >= 0)
  {
    v14[0] = v1 - v2;
    sub_10011535C(v14);

    sub_10012F4C4();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_10011416C()
{
  sub_10012EE00();
  if (v2 != v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10012EF24();
  sub_1000341E4();
  v4 = sub_10012F4E4();
  sub_1001156F8(v4, v5, v6, v7);
  if ((v0[2] & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v8)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012F304();
  sub_1001156F8(v9, v10, v11, v12);
  v13 = _swiftEmptyArrayStorage[2];
  if (v1 - v13 >= 0)
  {
    v14[0] = v1 - v13;
    memset(&v14[1], 0, 24);
    v14[4] = 1;
    sub_100115850(v14);

    v0[1] = 0;
    v0[2] = v13;
    *v0 = _swiftEmptyArrayStorage;
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100114244()
{
  sub_10012EE00();
  if (v2 != v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v20 = _swiftEmptyArrayStorage;
  sub_10012EF24();
  sub_100034224();
  v4 = sub_10012F4E4();
  sub_100115AF0(v4, v5, v6, v7);
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v8)
  {
    goto LABEL_9;
  }

  sub_10012F304();
  sub_100115AF0(v9, v10, v11, v12);
  v13 = v20[2];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v19 = 1;
  if (v1 - v13 >= 0)
  {
    v14 = v1 - v13;
    sub_100115E18(&v14);

    sub_10012F4C4();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_100114318()
{
  sub_10012EE00();
  if (v3 != v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v16 = _swiftEmptyArrayStorage;
  sub_10012EF24();
  sub_100034244();
  v5 = sub_10012F4E4();
  sub_1001161A4(v5, v6, v7, v8);
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v9)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012F304();
  sub_1001161A4(v10, v11, v12, v13);
  sub_10012F3E0();
  v15 = -256;
  if (v1 - v2 >= 0)
  {
    v14[0] = v1 - v2;
    sub_1001164D4(v14);

    sub_10012F4C4();
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1001143D4()
{
  sub_10012EE00();
  if (v1 != v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10012EF24();
  sub_10003458C();
  sub_10012F4E4();
  sub_100116AC8();
  if ((*(v0 + 16) & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_10012F330();
  if (!v3)
  {
    goto LABEL_9;
  }

  sub_10012F260();
  sub_10012EF6C();
  sub_100116AC8();
  sub_10012F310(v4, v5, v6, v7, v8, v9, v10, v11, v20, _swiftEmptyArrayStorage);
  if (!v1)
  {
    sub_10012F1C4();
    sub_100116870();

    sub_10012F2F4(v12, v13, v14, v15, v16, v17, v18, v19, v21, v22);
    return;
  }

LABEL_10:
  __break(1u);
}

void sub_1001144E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = v3 + a1;
  if (__OFADD__(v3, a1))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v2;
  if (!isUniquelyReferenced_nonNull_native || (v7 = *(v2 + 24) >> 1, v7 < v4))
  {
    sub_100033FEC();
    v2 = *v1;
    v7 = *(*v1 + 24) >> 1;
  }

  v8 = v7 - *(v2 + 16);
  sub_10006D7FC();
  if (v9 < a1)
  {
    goto LABEL_27;
  }

  if (v9 >= 1)
  {
    v10 = *(v2 + 16);
    v11 = __OFADD__(v10, v9);
    v12 = v10 + v9;
    if (v11)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    *(v2 + 16) = v12;
  }

  if (v9 != v8 || v28 == v23)
  {
LABEL_24:

    *v1 = v2;
    return;
  }

  if ((v28 & 0x8000000000000000) == 0 && v28 < v23)
  {
    v21 = v1;
    v13 = *(v2 + 16);
    v14 = v28 + 1;

LABEL_14:
    if (v13 + 1 > *(v2 + 24) >> 1)
    {
      sub_100033FEC();
    }

    v15 = 0;
    v16 = *(*v21 + 24) >> 1;
    v22 = *v21;
    for (i = *v21 + 24 * v13 + 48; ; i += 24)
    {
      v18 = v13 + v15;
      v19 = v14 + v15;
      if (v13 + v15 >= v16)
      {
        v2 = v22;
        *(v22 + 16) = v18;
        v13 = v18;
        v14 = v19;
        goto LABEL_14;
      }

      *(i - 16) = v24;
      *i = v25;
      *(i + 6) = (v25 | ((v26 | (v27 << 16)) << 32)) >> 48;
      *(i + 4) = v26;
      if (!(v14 - v23 + v15))
      {
        v20 = v13 + v15 + 1;
        v1 = v21;
        v2 = v22;
        *(v22 + 16) = v20;
        goto LABEL_24;
      }

      if (v14 < 0 || v19 >= v23)
      {
        break;
      }

      ++v15;
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
}

void sub_100114730()
{
  sub_1000A4080();
  v5 = v4 >> 1;
  v6 = (v4 >> 1) - v1;
  if (__OFSUB__(v4 >> 1, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = *v0;
  v8 = *(*v0 + 16);
  if (__OFADD__(v8, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v2;
  v10 = v1;
  v16 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v12 = *(v7 + 24) >> 1, v12 < v8 + v6))
  {
    v9();
    v7 = *v0;
    v12 = *(*v0 + 24) >> 1;
  }

  if (v5 == v10)
  {
    if (v6 <= 0)
    {
LABEL_13:
      swift_unknownObjectRelease();
      *v0 = v7;
      sub_1000A3DA0();
      return;
    }

    __break(1u);
  }

  if (v12 - *(v7 + 16) < v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000183C4(v16);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_13;
  }

  v13 = *(v7 + 16);
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    *(v7 + 16) = v15;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

void sub_100114858(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + a1;
  if (__OFADD__(v6, a1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v5;
  if (!isUniquelyReferenced_nonNull_native || (v12 = *(v5 + 24) >> 1, v12 < v7))
  {
    sub_10003402C();
    v5 = *v4;
    v12 = *(*v4 + 24) >> 1;
  }

  v13 = *(v5 + 16);
  v14 = v12 - v13;
  v27 = v4;
  if (v12 == v13)
  {
    goto LABEL_12;
  }

  v26 = v12 - v13;
  v28 = v5;
  v15 = v5 + 24 * v13 + 32;
  v16 = v12 - v13;
  v5 = v14 & ~(v14 >> 63);
  v17 = a1;
  v4 = a1 & ~(a1 >> 63);
  v18 = ~v13 + v12;
  if (!v5)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    if (a1 > 0)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = 0;
    goto LABEL_19;
  }

  while (1)
  {
    if (!v17)
    {
      v5 = v28;
      v19 = a1;
      v4 = v27;
      v14 = v16;
      goto LABEL_16;
    }

    if (!v4)
    {
      goto LABEL_37;
    }

    *v15 = a2;
    *(v15 + 8) = a3;
    *(v15 + 16) = a4;
    if (!v18)
    {
      break;
    }

    v15 += 24;
    sub_10012DC6C(a2);
    --v4;
    --v5;
    --v18;
    --v17;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  sub_10012DC6C(a2);
  v5 = v28;
  v14 = v16;
  v19 = v26;
  v4 = v27;
  if (v16 < a1)
  {
    goto LABEL_39;
  }

LABEL_16:
  if (v19 <= 0)
  {
    goto LABEL_19;
  }

  v20 = __OFADD__(v13, v19);
  v13 += v19;
  if (!v20)
  {
    *(v5 + 16) = v13;
LABEL_19:
    if (v19 != v14 || v14 == a1)
    {
LABEL_35:
      sub_1000370B8(a2);
      *v4 = v5;
      return;
    }

    if (v14 >= a1)
    {
      goto LABEL_40;
    }

    v22 = v14 + 1;
    sub_10012DC6C(a2);
LABEL_25:
    if (v13 + 1 > *(v5 + 24) >> 1)
    {
      sub_10003402C();
    }

    v23 = 0;
    v24 = *(*v4 + 24) >> 1;
    v29 = *v4;
    for (i = (*v4 + 24 * v13 + 48); ; i += 24)
    {
      if (v13 + v23 >= v24)
      {
        v4 = v27;
        v5 = v29;
        *(v29 + 16) = v13 + v23;
        v13 += v23;
        v22 += v23;
        goto LABEL_25;
      }

      *(i - 2) = a2;
      *(i - 1) = a3;
      *i = a4;
      if (!(v22 - a1 + v23))
      {
        v4 = v27;
        v5 = v29;
        *(v29 + 16) = v13 + v23 + 1;
        goto LABEL_35;
      }

      if (v22 < 0 || v22 + v23 >= a1)
      {
        break;
      }

      sub_10012DC6C(a2);
      ++v23;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_41:
  __break(1u);
}

void sub_100114AFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  if (__OFADD__(v8, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v7 + 24) >> 1, v11 < v8 + v6))
  {
    sub_10003406C();
    v7 = *v4;
    v11 = *(*v4 + 24) >> 1;
  }

  v12 = v11 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v12 >= v6)
    {
      sub_1000183C4(&qword_1002ADC00);
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_13;
      }

      v13 = *(v7 + 16);
      v14 = __OFADD__(v13, v6);
      v15 = v13 + v6;
      if (!v14)
      {
        *(v7 + 16) = v15;
        goto LABEL_13;
      }

LABEL_20:
      __break(1u);
      return;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 > 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = 0;
LABEL_13:
  swift_unknownObjectRelease();
  if (v6 == v12)
  {
    v16 = 1;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    sub_1000374B8(&v16, &qword_1002B46A0);
  }

  *v4 = v7;
}

uint64_t sub_100114C84(uint64_t result)
{
  v2 = v1;
  v3 = *result;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v4 + 24) >> 1, v8 < v6))
  {
    sub_10003406C();
    v4 = *v2;
    v8 = *(*v2 + 24) >> 1;
  }

  v9 = *(v4 + 16);
  v10 = v8 - v9;
  result = sub_10006D8EC(__src, (v4 + (v9 << 6) + 32), v8 - v9);
  if (result < v3)
  {
    goto LABEL_35;
  }

  v11 = v4;
  if (result < 1)
  {
LABEL_9:
    if (result == v10)
    {
      v15 = *(v4 + 16);
      v16 = __src[0];
      if (__src[9] == __src[0])
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v20 = 0uLL;
        v21 = 1;
        v22 = 0uLL;
        v23 = __src[0];
      }

      else
      {
        __dst[0] = *&__src[1];
        __dst[1] = *&__src[3];
        __dst[2] = *&__src[5];
        __dst[3] = *&__src[7];
        if ((__src[9] & 0x8000000000000000) != 0 || __src[9] >= __src[0])
        {
          goto LABEL_37;
        }

        v23 = __src[9] + 1;
        v19 = *(&__dst[3] + 1);
        v18 = *&__dst[3];
        v17 = *(&__dst[2] + 1);
        v21 = *&__dst[0];
        ++__src[9];
        sub_1000ACFAC();
        v22 = *(&__dst[1] + 8);
        v20 = *(__dst + 8);
      }

      v33 = v23;
      v29 = v2;
LABEL_16:
      if (v21 != 1)
      {
        v32 = v23;
        if (v15 + 1 > *(v11 + 24) >> 1)
        {
          v35 = v22;
          v37 = v20;
          sub_10003406C();
          v22 = v35;
          v20 = v37;
        }

        v24 = *(*v2 + 24) >> 1;
        v25 = *v2 + 88;
        v26 = v33;
        v30 = v25;
        v31 = *v2;
        while (1)
        {
          v27 = (v25 + (v15 << 6));
          while (1)
          {
            if (v21 == 1 || v15 >= v24)
            {
              v11 = v31;
              *(v31 + 16) = v15;
              v33 = v26;
              v2 = v29;
              v23 = v32;
              goto LABEL_16;
            }

            v40 = v20;
            v41 = v22;
            v39 = v21;
            v42 = v17;
            v43 = v18;
            v44 = v19;
            *(__dst + 8) = v20;
            *(&__dst[1] + 8) = v22;
            *&__dst[0] = v21;
            *(&__dst[2] + 1) = v17;
            *&__dst[3] = v18;
            *(&__dst[3] + 1) = v19;
            v34 = v22;
            v36 = v20;
            sub_1000ACFAC();
            result = sub_1000374B8(&v39, &qword_1002B46A0);
            *(v27 - 7) = v21;
            *(v27 - 3) = v36;
            *(v27 - 2) = v34;
            *(v27 - 2) = v17;
            *(v27 - 1) = v18;
            *v27 = v19;
            if (v26 != v16)
            {
              break;
            }

            v17 = 0;
            v18 = 0;
            v19 = 0;
            v27 += 8;
            v20 = 0uLL;
            ++v15;
            v22 = 0uLL;
            v21 = 1;
          }

          *v38 = __src[2];
          *&v38[8] = *&__src[3];
          *&v38[24] = __src[5];
          if (v33 < 0 || v26 >= v16)
          {
            break;
          }

          ++v15;
          ++v26;
          v19 = __src[8];
          v18 = __src[7];
          v17 = __src[6];
          v21 = __src[1];
          sub_1000ACFAC();
          v22 = *&v38[16];
          v20 = *v38;
          v32 = v26;
          v25 = v30;
        }

        __break(1u);
        goto LABEL_34;
      }

      __src[9] = v23;
      v41 = v22;
      v40 = v20;
      v39 = 1;
      v42 = v17;
      v43 = v18;
      v44 = v19;
      sub_1000374B8(&v39, &qword_1002B46A0);
    }

    memcpy(__dst, __src, sizeof(__dst));
    result = sub_1000374B8(__dst, &qword_1002B4698);
    *v2 = v11;
    return result;
  }

  v12 = *(v4 + 16);
  v13 = __OFADD__(v12, result);
  v14 = v12 + result;
  if (!v13)
  {
    *(v4 + 16) = v14;
    goto LABEL_9;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_10011502C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  if (__OFADD__(v8, v6))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v7 + 24) >> 1, v11 < v8 + v6))
  {
    sub_1000341A4();
    v7 = *v4;
    v11 = *(*v4 + 24) >> 1;
  }

  v12 = v11 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v12 >= v6)
    {
      sub_1000183C4(&qword_1002ADD30);
      swift_arrayInitWithCopy();
      if (v6 > 0)
      {
        v14 = *(v7 + 16);
        v15 = __OFADD__(v14, v6);
        v16 = v14 + v6;
        if (v15)
        {
LABEL_41:
          __break(1u);
          return;
        }

        *(v7 + 16) = v16;
      }

      v13 = v5;
      goto LABEL_14;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v6 > 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v6 = 0;
  v13 = a3;
LABEL_14:
  if (v6 == v12)
  {
    v17 = *(v7 + 16);
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v36 = -2;
    while (1)
    {
      sub_1000ACFAC();
      if (v31[24] == 254)
      {
        break;
      }

      sub_1000374B8(&v29, &qword_1002B46B8);
      if (v17 + 1 > *(v7 + 24) >> 1)
      {
        sub_1000341A4();
      }

      v7 = *v4;
      v18 = *(*v4 + 24) >> 1;
      for (i = (v17 << 6) | 0x20; ; i += 64)
      {
        sub_1000ACFAC();
        if (v28[24] == 254)
        {
          v25 = v27;
          v26 = &qword_1002B46B8;
          goto LABEL_33;
        }

        v29 = v27[0];
        v30 = v27[1];
        *v31 = *v28;
        *&v31[9] = *&v28[9];
        if (v17 >= v18)
        {
          break;
        }

        sub_1000374B8(&v32, &qword_1002B46B8);
        v20 = (v7 + i);
        v22 = v30;
        v21 = *v31;
        v23 = v29;
        *(v20 + 41) = *&v31[9];
        v20[1] = v22;
        v20[2] = v21;
        *v20 = v23;
        if (v13 == v5)
        {
          v35 = 0;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          v13 = v5;
          v36 = -2;
        }

        else
        {
          if (v13 < a3 || v13 >= v5)
          {
            __break(1u);
            goto LABEL_37;
          }

          sub_1000ACFAC();
          ++v13;
        }

        ++v17;
      }

      v25 = &v29;
      v26 = &qword_1002ADD30;
LABEL_33:
      sub_1000374B8(v25, v26);
      *(v7 + 16) = v17;
    }

    sub_1000374B8(&v32, &qword_1002B46B8);
    swift_unknownObjectRelease();
    sub_1000374B8(&v29, &qword_1002B46B8);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *v4 = v7;
}

uint64_t *sub_10011535C(uint64_t *result)
{
  v2 = v1;
  v3 = *result;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 24) >> 1, v9 < v6))
  {
    sub_1000341A4();
    v4 = *v2;
    v9 = *(*v2 + 24) >> 1;
  }

  v10 = v9 - *(v4 + 16);
  sub_1000ACFAC();
  v11 = sub_10006DCA0();
  result = sub_1000374B8(v7, &qword_1002B46A8);
  if (v11 < v3)
  {
    goto LABEL_35;
  }

  if (v11 >= 1)
  {
    v12 = *(v4 + 16);
    v13 = __OFADD__(v12, v11);
    v14 = v12 + v11;
    if (!v13)
    {
      *(v4 + 16) = v14;
      goto LABEL_9;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_9:
  if (v11 != v10)
  {
    result = sub_1000374B8(v37, &qword_1002B46B0);
LABEL_32:
    *v2 = v4;
    return result;
  }

  v15 = *(v4 + 16);
  v16 = v37[0];
  v26 = v2;
  if (v38 == v37[0])
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v36 = -2;
    v17 = v37[0];
LABEL_16:
    while (2)
    {
      sub_1000ACFAC();
      if (v31[24] != 254)
      {
        sub_1000374B8(&v29, &qword_1002B46B8);
        if (v15 + 1 > *(v4 + 24) >> 1)
        {
          sub_1000341A4();
        }

        v4 = *v26;
        v18 = *(*v26 + 24) >> 1;
        for (i = (v15 << 6) | 0x20; ; i += 64)
        {
          sub_1000ACFAC();
          if (v28[24] == 254)
          {
            break;
          }

          v29 = v27[0];
          v30 = v27[1];
          *v31 = *v28;
          *&v31[9] = *&v28[9];
          if (v15 >= v18)
          {
            v24 = &v29;
            v25 = &qword_1002ADD30;
            goto LABEL_30;
          }

          result = sub_1000374B8(&v32, &qword_1002B46B8);
          v20 = (v4 + i);
          v22 = v30;
          v21 = *v31;
          v23 = v29;
          *(v20 + 41) = *&v31[9];
          v20[1] = v22;
          v20[2] = v21;
          *v20 = v23;
          if (v17 == v16)
          {
            v35 = 0;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            v17 = v16;
            v36 = -2;
          }

          else
          {
            if (v17 < 0 || v17 >= v16)
            {
              __break(1u);
              goto LABEL_34;
            }

            sub_1000ACFAC();
            v38 = ++v17;
          }

          ++v15;
        }

        v24 = v27;
        v25 = &qword_1002B46B8;
LABEL_30:
        sub_1000374B8(v24, v25);
        *(v4 + 16) = v15;
        continue;
      }

      break;
    }

    sub_1000374B8(&v32, &qword_1002B46B8);
    sub_1000374B8(v37, &qword_1002B46B0);
    result = sub_1000374B8(&v29, &qword_1002B46B8);
    v2 = v26;
    goto LABEL_32;
  }

  if ((v38 & 0x8000000000000000) == 0 && v38 < v37[0])
  {
    sub_1000ACFAC();
    v17 = ++v38;
    goto LABEL_16;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_1001156F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  if (__OFADD__(v8, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v7 + 24) >> 1, v11 < v8 + v6))
  {
    sub_1000341E4();
    v7 = *v4;
    v11 = *(*v4 + 24) >> 1;
  }

  v12 = v11 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v12 >= v6)
    {
      sub_1000183C4(&qword_1002ADC28);
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_13;
      }

      v13 = *(v7 + 16);
      v14 = __OFADD__(v13, v6);
      v15 = v13 + v6;
      if (!v14)
      {
        *(v7 + 16) = v15;
        goto LABEL_13;
      }

LABEL_20:
      __break(1u);
      return;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 > 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = 0;
LABEL_13:
  swift_unknownObjectRelease();
  if (v6 == v12)
  {
    sub_10012DBF8(0, 0, 0, 2);
  }

  *v4 = v7;
}

void sub_100115850(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + *a1;
  if (__OFADD__(v5, *a1))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v4 + 24) >> 1, v8 < v6))
  {
    sub_1000341E4();
    v4 = *v2;
    v8 = *(*v2 + 24) >> 1;
  }

  v9 = v8 - *(v4 + 16);
  sub_10006DD84();
  if (v10 < v3)
  {
    goto LABEL_34;
  }

  if (v10 < 1)
  {
LABEL_9:
    if (v10 == v9)
    {
      v14 = *(v4 + 16);
      v29 = v2;
      if (v41 == v36)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v32 = v37;
        v33 = v38;
        v18 = 2;
        v19 = v36;
        v30 = v39;
        v31 = v40;
      }

      else
      {
        if (v41 < 0 || v41 >= v36)
        {
          goto LABEL_36;
        }

        v15 = v39;
        v18 = v40;
        v17 = v37;
        v16 = v38;
        v19 = v41 + 1;
        sub_10006E310(v37, v38, v39, v40);
        v30 = v39;
        v31 = v40;
        v32 = v37;
        v33 = v38;
      }

LABEL_16:
      if (v18 != 2)
      {
        if (v14 + 1 > *(v4 + 24) >> 1)
        {
          sub_1000341E4();
        }

        v24 = *v2 + 56;
        v34 = v19;
        v35 = *v2;
        v25 = *(*v2 + 24) >> 1;
        v26 = v19;
        while (1)
        {
          v27 = (v24 + 32 * v14);
          do
          {
            if (v18 == 2 || v14 >= v25)
            {
              v4 = v35;
              *(v35 + 16) = v14;
              v19 = v26;
              v2 = v29;
              goto LABEL_16;
            }

            sub_10006E310(v17, v16, v15, v18);
            sub_10012DBF8(v17, v16, v15, v18);
            *(v27 - 3) = v17;
            *(v27 - 2) = v16;
            ++v14;
            *(v27 - 1) = v15;
            *v27 = v18;
            v27 += 4;
            v18 = 2;
            v15 = 0;
            v16 = 0;
            v17 = 0;
          }

          while (v26 == v36);
          if (v34 < 0 || v26 >= v36)
          {
            break;
          }

          ++v26;
          v17 = v32;
          v16 = v33;
          v15 = v30;
          v18 = v31;
          sub_10006E310(v32, v33, v30, v31);
        }

        __break(1u);
        goto LABEL_33;
      }

      sub_10012DBF8(v17, v16, v15, 2);
      v20 = v32;
      v21 = v33;
      v22 = v30;
      v23 = v31;
    }

    else
    {
      v20 = v37;
      v21 = v38;
      v22 = v39;
      v23 = v40;
    }

    sub_10003715C(v20, v21, v22, v23);
    *v2 = v4;
    return;
  }

  v11 = *(v4 + 16);
  v12 = __OFADD__(v11, v10);
  v13 = v11 + v10;
  if (!v12)
  {
    *(v4 + 16) = v13;
    goto LABEL_9;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_100115AF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  if (__OFADD__(v8, v6))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v7 + 24) >> 1, v11 < v8 + v6))
  {
    sub_100034224();
    v7 = *v4;
    v11 = *(*v4 + 24) >> 1;
  }

  v12 = v11 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v12 >= v6)
    {
      sub_1000183C4(&qword_1002ADD70);
      swift_arrayInitWithCopy();
      if (v6 > 0)
      {
        v14 = *(v7 + 16);
        v15 = __OFADD__(v14, v6);
        v16 = v14 + v6;
        if (v15)
        {
LABEL_41:
          __break(1u);
          return;
        }

        *(v7 + 16) = v16;
      }

      v13 = v5;
      goto LABEL_14;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v6 > 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v6 = 0;
  v13 = a3;
LABEL_14:
  if (v6 == v12)
  {
    v17 = *(v7 + 16);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v29 = 2;
    while (1)
    {
      sub_1000ACFAC();
      if (__dst[8] == 2)
      {
        break;
      }

      sub_1000374B8(__dst, &qword_1002B46D0);
      if (v17 + 1 > *(v7 + 24) >> 1)
      {
        sub_100034224();
      }

      v7 = *v4;
      v18 = *(*v4 + 24) >> 1;
      for (i = 72 * v17 + 32; ; i += 72)
      {
        sub_1000ACFAC();
        if (__src[8] == 2)
        {
          v21 = __src;
          v22 = &qword_1002B46D0;
          goto LABEL_33;
        }

        memcpy(__dst, __src, sizeof(__dst));
        if (v17 >= v18)
        {
          break;
        }

        sub_1000374B8(&v25, &qword_1002B46D0);
        memcpy((v7 + i), __dst, 0x48uLL);
        if (v13 == v5)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v13 = v5;
          v29 = 2;
        }

        else
        {
          if (v13 < a3 || v13 >= v5)
          {
            __break(1u);
            goto LABEL_37;
          }

          sub_1000ACFAC();
          ++v13;
        }

        ++v17;
      }

      v21 = __dst;
      v22 = &qword_1002ADD70;
LABEL_33:
      sub_1000374B8(v21, v22);
      *(v7 + 16) = v17;
    }

    sub_1000374B8(&v25, &qword_1002B46D0);
    swift_unknownObjectRelease();
    sub_1000374B8(__dst, &qword_1002B46D0);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *v4 = v7;
}

uint64_t *sub_100115E18(uint64_t *result)
{
  v2 = v1;
  v3 = *result;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 24) >> 1, v9 < v6))
  {
    sub_100034224();
    v4 = *v2;
    v9 = *(*v2 + 24) >> 1;
  }

  v10 = v9 - *(v4 + 16);
  sub_1000ACFAC();
  v11 = sub_10006DE4C();
  result = sub_1000374B8(v7, &qword_1002B46C0);
  if (v11 < v3)
  {
    goto LABEL_35;
  }

  if (v11 >= 1)
  {
    v12 = *(v4 + 16);
    v13 = __OFADD__(v12, v11);
    v14 = v12 + v11;
    if (!v13)
    {
      *(v4 + 16) = v14;
      goto LABEL_9;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_9:
  if (v11 != v10)
  {
    result = sub_1000374B8(v30, &qword_1002B46C8);
LABEL_32:
    *v2 = v4;
    return result;
  }

  v15 = *(v4 + 16);
  v16 = v30[0];
  v22 = v2;
  if (v31 == v30[0])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v29 = 2;
    v17 = v30[0];
LABEL_16:
    while (2)
    {
      sub_1000ACFAC();
      if (__dst[8] != 2)
      {
        sub_1000374B8(__dst, &qword_1002B46D0);
        if (v15 + 1 > *(v4 + 24) >> 1)
        {
          sub_100034224();
        }

        v4 = *v22;
        v18 = *(*v22 + 24) >> 1;
        for (i = 72 * v15 + 32; ; i += 72)
        {
          sub_1000ACFAC();
          if (__src[8] == 2)
          {
            break;
          }

          memcpy(__dst, __src, sizeof(__dst));
          if (v15 >= v18)
          {
            v20 = __dst;
            v21 = &qword_1002ADD70;
            goto LABEL_30;
          }

          sub_1000374B8(&v25, &qword_1002B46D0);
          result = memcpy((v4 + i), __dst, 0x48uLL);
          if (v17 == v16)
          {
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v17 = v16;
            v29 = 2;
          }

          else
          {
            if (v17 < 0 || v17 >= v16)
            {
              __break(1u);
              goto LABEL_34;
            }

            sub_1000ACFAC();
            v31 = ++v17;
          }

          ++v15;
        }

        v20 = __src;
        v21 = &qword_1002B46D0;
LABEL_30:
        sub_1000374B8(v20, v21);
        *(v4 + 16) = v15;
        continue;
      }

      break;
    }

    sub_1000374B8(&v25, &qword_1002B46D0);
    sub_1000374B8(v30, &qword_1002B46C8);
    result = sub_1000374B8(__dst, &qword_1002B46D0);
    v2 = v22;
    goto LABEL_32;
  }

  if ((v31 & 0x8000000000000000) == 0 && v31 < v30[0])
  {
    sub_1000ACFAC();
    v17 = ++v31;
    goto LABEL_16;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_1001161A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  if (__OFADD__(v8, v6))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v7 + 24) >> 1, v10 < v8 + v6))
  {
    sub_100034244();
    v7 = *v4;
    v10 = *(*v4 + 24) >> 1;
  }

  v11 = v10 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v11 >= v6)
    {
      sub_1000183C4(&qword_1002ADA18);
      swift_arrayInitWithCopy();
      if (v6 > 0)
      {
        v13 = *(v7 + 16);
        v14 = __OFADD__(v13, v6);
        v15 = v13 + v6;
        if (v14)
        {
LABEL_41:
          __break(1u);
          return;
        }

        *(v7 + 16) = v15;
      }

      v12 = v5;
      goto LABEL_14;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v6 > 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v6 = 0;
  v12 = a3;
LABEL_14:
  if (v6 == v11)
  {
    v16 = *(v7 + 16);
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v36 = -512;
    while (1)
    {
      sub_1000ACFAC();
      if (v31[25] << 8 == 65024)
      {
        break;
      }

      sub_1000374B8(&v29, &qword_1002B46F8);
      if (v16 + 1 > *(v7 + 24) >> 1)
      {
        sub_100034244();
      }

      v7 = *v4;
      v17 = *(*v4 + 24) >> 1;
      for (i = (v16 << 6) | 0x20; ; i += 64)
      {
        sub_1000ACFAC();
        if (v28[25] << 8 == 65024)
        {
          v24 = v27;
          v25 = &qword_1002B46F8;
          goto LABEL_33;
        }

        v29 = v27[0];
        v30 = v27[1];
        *v31 = *v28;
        *&v31[10] = *&v28[10];
        if (v16 >= v17)
        {
          break;
        }

        sub_1000374B8(&v32, &qword_1002B46F8);
        v19 = (v7 + i);
        v21 = v30;
        v20 = *v31;
        v22 = v29;
        *(v19 + 42) = *&v31[10];
        v19[1] = v21;
        v19[2] = v20;
        *v19 = v22;
        if (v12 == v5)
        {
          v35 = 0;
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          v12 = v5;
          v36 = -512;
        }

        else
        {
          if (v12 < a3 || v12 >= v5)
          {
            __break(1u);
            goto LABEL_37;
          }

          sub_1000ACFAC();
          ++v12;
        }

        ++v16;
      }

      v24 = &v29;
      v25 = &qword_1002ADA18;
LABEL_33:
      sub_1000374B8(v24, v25);
      *(v7 + 16) = v16;
    }

    sub_1000374B8(&v32, &qword_1002B46F8);
    swift_unknownObjectRelease();
    sub_1000374B8(&v29, &qword_1002B46F8);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *v4 = v7;
}

uint64_t *sub_1001164D4(uint64_t *result)
{
  v2 = v1;
  v3 = *result;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + *result;
  if (__OFADD__(v5, *result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 24) >> 1, v9 < v6))
  {
    sub_100034244();
    v4 = *v2;
    v9 = *(*v2 + 24) >> 1;
  }

  v10 = v9 - *(v4 + 16);
  sub_1000ACFAC();
  v11 = sub_10006DF30();
  result = sub_1000374B8(v7, &qword_1002B46E8);
  if (v11 < v3)
  {
    goto LABEL_35;
  }

  if (v11 >= 1)
  {
    v12 = *(v4 + 16);
    v13 = __OFADD__(v12, v11);
    v14 = v12 + v11;
    if (!v13)
    {
      *(v4 + 16) = v14;
      goto LABEL_9;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_9:
  if (v11 != v10)
  {
    result = sub_1000374B8(v37, &qword_1002B46F0);
LABEL_32:
    *v2 = v4;
    return result;
  }

  v15 = *(v4 + 16);
  v16 = v37[0];
  v26 = v2;
  if (v38 == v37[0])
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v36 = -512;
    v17 = v37[0];
LABEL_16:
    while (2)
    {
      sub_1000ACFAC();
      if (v31[25] << 8 != 65024)
      {
        sub_1000374B8(&v29, &qword_1002B46F8);
        if (v15 + 1 > *(v4 + 24) >> 1)
        {
          sub_100034244();
        }

        v4 = *v26;
        v18 = *(*v26 + 24) >> 1;
        for (i = (v15 << 6) | 0x20; ; i += 64)
        {
          sub_1000ACFAC();
          if (v28[25] << 8 == 65024)
          {
            break;
          }

          v29 = v27[0];
          v30 = v27[1];
          *v31 = *v28;
          *&v31[10] = *&v28[10];
          if (v15 >= v18)
          {
            v24 = &v29;
            v25 = &qword_1002ADA18;
            goto LABEL_30;
          }

          result = sub_1000374B8(&v32, &qword_1002B46F8);
          v20 = (v4 + i);
          v22 = v30;
          v21 = *v31;
          v23 = v29;
          *(v20 + 42) = *&v31[10];
          v20[1] = v22;
          v20[2] = v21;
          *v20 = v23;
          if (v17 == v16)
          {
            v35 = 0;
            v33 = 0u;
            v34 = 0u;
            v32 = 0u;
            v17 = v16;
            v36 = -512;
          }

          else
          {
            if (v17 < 0 || v17 >= v16)
            {
              __break(1u);
              goto LABEL_34;
            }

            sub_1000ACFAC();
            v38 = ++v17;
          }

          ++v15;
        }

        v24 = v27;
        v25 = &qword_1002B46F8;
LABEL_30:
        sub_1000374B8(v24, v25);
        *(v4 + 16) = v15;
        continue;
      }

      break;
    }

    sub_1000374B8(&v32, &qword_1002B46F8);
    sub_1000374B8(v37, &qword_1002B46F0);
    result = sub_1000374B8(&v29, &qword_1002B46F8);
    v2 = v26;
    goto LABEL_32;
  }

  if ((v38 & 0x8000000000000000) == 0 && v38 < v37[0])
  {
    sub_1000ACFAC();
    v17 = ++v38;
    goto LABEL_16;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_100116870()
{
  sub_10001A1F0();
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = v7 + v1;
  if (__OFADD__(v7, v1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v9 = v5;
  v10 = v4;
  v11 = v3;
  v12 = v2;
  v13 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v6;
  if (!isUniquelyReferenced_nonNull_native || (v15 = *(v6 + 24) >> 1, v15 < v8))
  {
    v10();
    v6 = *v0;
    v15 = *(*v0 + 24) >> 1;
  }

  v36 = v10;
  v16 = *(v6 + 16);
  v17 = v15 - v16;
  v39 = v0;
  if (v15 == v16)
  {
    goto LABEL_12;
  }

  v35 = v15 - v16;
  v37 = v15 - v16;
  v38 = v6;
  v18 = (v6 + 16 * v16 + 32);
  v19 = v17 & ~(v17 >> 63);
  v0 = v13 & ~(v13 >> 63);
  v6 = ~v16 + v15;
  v20 = v13;
  if (!v19)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    if (v13 > 0)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v22 = 0;
    goto LABEL_19;
  }

  while (1)
  {
    if (!v20)
    {
      v22 = v13;
      v0 = v39;
      v17 = v37;
      v6 = v38;
      goto LABEL_16;
    }

    if (!v0)
    {
      goto LABEL_37;
    }

    *v18 = v12;
    v18[1] = v11;
    if (!v6)
    {
      break;
    }

    v18 += 2;
    v21 = sub_10005053C();
    v9(v21);
    --v0;
    --v19;
    --v6;
    --v20;
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  v23 = sub_10005053C();
  v9(v23);
  v17 = v37;
  v6 = v38;
  v0 = v39;
  v22 = v35;
  if (v37 < v13)
  {
    goto LABEL_39;
  }

LABEL_16:
  if (v22 <= 0)
  {
    goto LABEL_19;
  }

  v24 = __OFADD__(v16, v22);
  v16 += v22;
  if (!v24)
  {
    *(v6 + 16) = v16;
LABEL_19:
    if (v22 != v17 || v17 == v13)
    {
LABEL_35:
      v33 = sub_10005053C();
      v34(v33);
      *v0 = v6;
      sub_10001A1D4();
      return;
    }

    if (v17 >= v13)
    {
      goto LABEL_40;
    }

    v26 = v17 + 1;
    v27 = sub_10005053C();
    v9(v27);
LABEL_25:
    v28 = *(v6 + 24);
    if (v16 + 1 > (v28 >> 1))
    {
      (v36)(v28 > 1);
    }

    v29 = *(*v0 + 24) >> 1;
    v6 = *v0;
    v30 = (*v0 + 16 * v16 + 40);
    v31 = v26;
    while (1)
    {
      if (v16 >= v29)
      {
        *(v6 + 16) = v16;
        v26 = v31;
        v0 = v39;
        goto LABEL_25;
      }

      *(v30 - 1) = v12;
      *v30 = v11;
      if (v13 == v31)
      {
        *(v6 + 16) = v16 + 1;
        v0 = v39;
        goto LABEL_35;
      }

      if (v26 < 0 || v31 >= v13)
      {
        break;
      }

      ++v31;
      v32 = sub_10005053C();
      v9(v32);
      v30 += 2;
      ++v16;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_41:
  __break(1u);
}

void sub_100116AC8()
{
  sub_100037C08();
  v4 = v3 >> 1;
  v5 = (v3 >> 1) - v1;
  if (__OFSUB__(v3 >> 1, v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = *v0;
  v7 = *(*v0 + 16);
  if (__OFADD__(v7, v5))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = v2;
  v9 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v6;
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v6 + 24) >> 1, v11 < v7 + v5))
  {
    v8();
    v6 = *v0;
    v11 = *(*v0 + 24) >> 1;
  }

  if (v4 == v9)
  {
    if (v5 <= 0)
    {
LABEL_13:
      swift_unknownObjectRelease();
      *v0 = v6;
      sub_100037B00();
      return;
    }

    __break(1u);
  }

  if (v11 - *(v6 + 16) < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000183C4(&qword_1002ADD88);
  swift_arrayInitWithCopy();
  if (v5 <= 0)
  {
    goto LABEL_13;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_100116BF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 16);
  v6 = v5 + result;
  if (__OFADD__(v5, result))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v4;
  if (!result || (v10 = *(v4 + 24) >> 1, v10 < v6))
  {
    result = sub_1000375D4(result);
    v4 = *v3;
    v10 = *(*v3 + 24) >> 1;
  }

  v11 = *(v4 + 16);
  v12 = v10 - v11;
  if (v10 == v11)
  {
    goto LABEL_12;
  }

  v25 = v4;
  v26 = v3;
  v24 = v10 - v11;
  v13 = (v4 + 16 * v11 + 32);
  v4 = v12 & ~(v12 >> 63);
  v14 = v9 & ~(v9 >> 63);
  v3 = (~v11 + v10);
  v15 = v9;
  if (!v4)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    if (v9 > 0)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v16 = 0;
    goto LABEL_19;
  }

  while (1)
  {
    if (!v15)
    {
      v16 = v9;
      v4 = v25;
      v3 = v26;
      goto LABEL_16;
    }

    if (!v14)
    {
      goto LABEL_37;
    }

    *v13 = a2;
    v13[1] = a3;
    if (!v3)
    {
      break;
    }

    v13 += 2;
    result = sub_10003742C(a2);
    --v14;
    --v4;
    v3 = (v3 - 1);
    --v15;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  result = sub_10003742C(a2);
  v4 = v25;
  v3 = v26;
  v16 = v24;
  if (v12 < v9)
  {
    goto LABEL_39;
  }

LABEL_16:
  if (v16 <= 0)
  {
    goto LABEL_19;
  }

  v17 = __OFADD__(v11, v16);
  v11 += v16;
  if (!v17)
  {
    *(v4 + 16) = v11;
LABEL_19:
    if (v16 != v12 || v12 == v9)
    {
LABEL_35:
      result = sub_100037408(a2);
      *v3 = v4;
      return result;
    }

    if (v12 >= v9)
    {
      goto LABEL_40;
    }

    v19 = v12 + 1;
    result = sub_10003742C(a2);
LABEL_25:
    v20 = *(v4 + 24);
    if (v11 + 1 > (v20 >> 1))
    {
      result = sub_1000375D4(v20 > 1);
    }

    v4 = *v3;
    v21 = *(*v3 + 24) >> 1;
    v22 = (*v3 + 16 * v11 + 40);
    v23 = v19;
    while (1)
    {
      if (v11 >= v21)
      {
        *(v4 + 16) = v11;
        v19 = v23;
        goto LABEL_25;
      }

      *(v22 - 1) = a2;
      *v22 = a3;
      if (v9 == v23)
      {
        *(v4 + 16) = v11 + 1;
        goto LABEL_35;
      }

      if (v19 < 0 || v23 >= v9)
      {
        break;
      }

      ++v23;
      result = sub_10003742C(a2);
      v22 += 2;
      ++v11;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_41:
  __break(1u);
  return result;
}

void sub_100116E2C(uint64_t a1)
{
  if (a1 < 1)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000375D4(0);
  v3 = v1[1];
  v4 = v1[2];
  v5 = *v1;
  if (v4 >= v3)
  {
    if (v3 < 0)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v6 = *(v5 + 16);
    if (v6 < v3 || v6 < v4)
    {
      goto LABEL_18;
    }

LABEL_11:

    sub_100116AC8();
    v8 = *(&_swiftEmptyArrayStorage + 2);
    if (a1 - v8 >= 0)
    {
      sub_100116870();

      v1[1] = 0;
      v1[2] = v8;
      *v1 = &_swiftEmptyArrayStorage;
      return;
    }

    goto LABEL_14;
  }

  sub_1001134C0(v1[1], *v1);
  sub_100116AC8();
  if (v4 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (*(v5 + 16) >= v4)
  {
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t EventLoopFuture.hop(to:)()
{
  v1 = v0;
  sub_10012F33C();
  if (*(v0 + *(v3 + 96)) == v4)
  {
  }

  else
  {
    v5 = v2;
    swift_getObjectType();
    sub_1000A40D0();
    v11 = EventLoop.makePromise<A>(of:file:line:)(v6, v7, v8, v9, 1379, v10, v6, v5);

    EventLoopFuture.cascade(to:)(v12);

    return v11;
  }

  return v1;
}

uint64_t sub_10011709C(uint64_t a1, uint64_t a2)
{
  sub_1000A41C8();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  EventLoopFuture._whenComplete(_:)();
}

uint64_t sub_10011714C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  sub_1000183C4(&qword_1002B46D8);
  v9 = sub_10012F8DC();
  sub_10012EEF4(v9, *(a5 + 40));

  sub_10012F78C();

  sub_1000D4B60();
  a7();

  return v9;
}

uint64_t sub_1001171E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1000183C4(&qword_1002B46D8);
  v10 = sub_10012F8DC();
  sub_10012EEF4(v10, *(a5 + 40));
  swift_unknownObjectRetain();
  sub_10012F78C();

  sub_1000D4B60();
  sub_10012156C(v11, v12, v13, a6, a7);
  swift_unknownObjectRelease();

  return v10;
}

uint64_t CallbackList.firstCallback.getter()
{
  sub_100023584();
  sub_10003742C(v0);
  return sub_10012F960();
}

uint64_t CallbackList.firstCallback.setter()
{
  sub_100037B94();
  result = sub_100037408(*v1);
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t CallbackList.furtherCallbacks.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void CallbackList.append(_:)()
{
  sub_100037B94();
  if (*v1)
  {
    v5 = v1[2];
    v4 = v1 + 2;
    if (v5)
    {
      sub_10004794C();
      v6 = swift_allocObject();
      sub_10012F744(v6);

      sub_100031F78();
      v7 = *(*v4 + 16);
      sub_1000321AC();
      v8 = *v4;
      *(v8 + 16) = v7 + 1;
      v9 = v8 + 16 * v7;
      *(v9 + 32) = sub_10012ED18;
      *(v9 + 40) = v3;
      *v4 = v8;
      return;
    }

    sub_1000183C4(&qword_1002ADBD8);
    sub_100047958();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001FE9E0;
    sub_10004794C();
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = v0;
    *(v10 + 32) = sub_10012CDC8;
    *(v10 + 40) = v11;
    *v4 = v10;
  }

  else
  {
    *v1 = v2;
    v1[1] = v0;
  }
}

uint64_t sub_100117468@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

void CallbackList._allCallbacks()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_100023584();
    if (v6)
    {
      sub_100112E54(_swiftEmptyArrayStorage);
      v13[0] = v7;
      v13[1] = v8;
      v13[2] = v9;
      CallbackList.appendAllCallbacks(_:)(v13, v4, v3, a3);
      return;
    }

    sub_1000183C4(&qword_1002ADBD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    sub_10004794C();
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v3;
    *(inited + 32) = sub_10012ED18;
    *(inited + 40) = v12;

    v10 = inited;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_100112E54(v10);
}

void CallbackList.appendAllCallbacks(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return;
  }

  sub_1000A3DBC();
  if (v8)
  {
    v9 = *v7;
    v10 = v7[1];
    v11 = v7[2];
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (v13 < 0 != v12)
    {
      v13 += *(v9 + 16);
    }

    v12 = __OFADD__(v13, 1);
    v14 = v13 + 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v15 = *(a4 + 16);
      v16 = v14 + v15;
      if (!__OFADD__(v14, v15))
      {
        if (*(v9 + 16) >= v16)
        {
          v24 = sub_100037B7C();
          sub_10003742C(v24);
        }

        else
        {
          v17 = sub_1001062A8(v16);
          v18 = sub_100037B7C();
          sub_10003742C(v18);

          sub_100116E2C(v17);
        }

        sub_10004794C();
        v25 = swift_allocObject();
        *(v25 + 16) = v5;
        *(v25 + 24) = v4;

        v26 = sub_10012F37C();
        sub_10002EEA0(v26, v27);

        sub_100113068(a4);
        v28 = sub_100037B7C();

        sub_100037408(v28);
        return;
      }
    }

    __break(1u);
    return;
  }

  sub_10004794C();
  v19 = swift_allocObject();
  sub_10012F744(v19);
  v20 = sub_100037B7C();
  sub_10003742C(v20);

  v21 = sub_10012F998();
  sub_10002EEA0(v21, v22);
  v23 = sub_100037B7C();
  sub_100037408(v23);
}

Swift::Void __swiftcall CallbackList._run()()
{
  if (!v0)
  {
    return;
  }

  v2 = v0;
  if (v1)
  {
    v3 = sub_100037A2C();
    CallbackList._allCallbacks()(v3, v4, v5);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v123 = v6;
    v124 = v8;
    v125 = v10;
    while (1)
    {
      v12 = v11 - v9;
      if (v11 < v9)
      {
        v12 += *(v7 + 16);
      }

      if (v12 < 1)
      {

        return;
      }

      if (v11 == v9)
      {
        goto LABEL_141;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_142;
      }

      if (HIDWORD(v9))
      {
        goto LABEL_143;
      }

      v13 = *(v7 + 16);
      if (v9 >= v13)
      {
        goto LABEL_144;
      }

      v14 = *(v7 + 16 * v9 + 32);
      if (!v14)
      {
        goto LABEL_173;
      }

      if (v11 >= v9)
      {
        v13 = 0;
      }

      if ((v11 - v9 + v13) < 1)
      {
        goto LABEL_145;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100111F3C();
      }

      if (v9 >= *(v7 + 16))
      {
        goto LABEL_146;
      }

      v15 = (v7 + 32 + 16 * v9);
      v16 = *v15;
      *v15 = 0;
      v15[1] = 0;
      v17 = sub_100037408(v16);
      v18 = (*(v7 + 16) + 0x1FFFFFFFFLL) & (v9 + 1);
      v123 = v7;
      v124 = v18;
      v14(&v120, v17);
      sub_100037408(v14);
      v19 = v120;
      v20 = v122;
      if (!v120)
      {
        break;
      }

      v21 = v121;
      if (v122)
      {
        v22 = v11 - v18;
        if (v11 < v18)
        {
          v22 += *(v7 + 16);
        }

        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (!v23)
        {
          v25 = *(v122 + 16);
          v26 = v24 + v25;
          if (__OFADD__(v24, v25))
          {
            goto LABEL_148;
          }

          if (*(v7 + 16) >= v26)
          {
            v38 = sub_1000DD44C();
            sub_10003742C(v38);

            v27 = v21;
          }

          else
          {
            v27 = v121;
            v28 = sub_1001062A8(v26);
            sub_10003742C(v19);

            sub_100116E2C(v28);
            v7 = v123;
          }

          sub_10004794C();
          v39 = swift_allocObject();
          *(v39 + 16) = v19;
          *(v39 + 24) = v27;
          v40 = v125;
          sub_10003742C(v19);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_100111F3C();
          }

          if ((v40 & 0x8000000000000000) == 0)
          {
            if (v40 >= *(v7 + 16))
            {
              goto LABEL_150;
            }

            v41 = v7 + 16 * v40;
            v42 = *(v41 + 32);
            *(v41 + 32) = sub_10012ED18;
            *(v41 + 40) = v39;
            sub_100037408(v42);
            v43 = (*(v7 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v40 + 1);
            v123 = v7;
            v125 = v43;
            if (v124 == v43)
            {
              sub_100113CFC();
            }

            v44 = 0;
            v45 = *(v20 + 16);
            v116 = v20;
            while (1)
            {
              if (v45 == v44)
              {

                v55 = sub_100037A2C();
                sub_100037408(v55);

                v56 = sub_100037A2C();
                sub_100037408(v56);
                v7 = v123;
                goto LABEL_59;
              }

              if (v44 >= *(v20 + 16))
              {
                break;
              }

              v46 = v125;
              v47 = v123;
              v118 = *(v20 + 16 * v44 + 32);
              swift_retain_n();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v47 = sub_100111F3C();
              }

              if ((v46 & 0x8000000000000000) != 0)
              {
                goto LABEL_128;
              }

              if (v46 >= *(v47 + 16))
              {
                goto LABEL_129;
              }

              v48 = (v47 + 32 + 16 * v46);
              v49 = *v48;
              *v48 = v118;
              sub_100037408(v49);
              v50 = *(v47 + 16);
              v51 = (v50 + 0x7FFFFFFFFFFFFFFFLL) & (v46 + 1);
              v123 = v47;
              v125 = v51;
              if (v124 == v51)
              {
                v52 = 2 * v50;
                if (2 * v50 < 1)
                {
                  goto LABEL_130;
                }

                v53 = sub_10012F36C();
                sub_1000375D4(v53);
                if (*(v47 + 16) < v51)
                {
                  goto LABEL_131;
                }

                sub_10012EDD0();
                sub_10012F484();
                sub_100116AC8();
                if (*(v47 + 16) < v51)
                {
                  goto LABEL_132;
                }

                sub_10012EDD0();
                sub_10012F484();
                sub_100116AC8();
                v54 = *(v120 + 16);
                if (v52 - v54 < 0)
                {
                  goto LABEL_133;
                }

                sub_10012EDE8();
                sub_10012F1C4();
                sub_100116870();

                v124 = 0;
                v125 = v54;
                v123 = v120;
                v20 = v116;
              }

              else
              {
              }

              ++v44;
            }

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
            goto LABEL_135;
          }

LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      sub_10004794C();
      v29 = swift_allocObject();
      *(v29 + 16) = v19;
      *(v29 + 24) = v21;
      v30 = sub_1000DD44C();
      sub_10003742C(v30);
      v31 = sub_1000DD44C();
      sub_10003742C(v31);

      if (v11 < 0)
      {
        goto LABEL_157;
      }

      if (v11 >= *(v7 + 16))
      {
        goto LABEL_158;
      }

      v32 = (v7 + 32 + 16 * v11);
      v33 = *v32;
      *v32 = sub_10012ED18;
      v32[1] = v29;
      sub_100037408(v33);
      v34 = *(v7 + 16);
      v123 = v7;
      v125 = (v34 + 0x7FFFFFFFFFFFFFFFLL) & (v11 + 1);
      if (v18 == v125)
      {
        v35 = 2 * v34;
        if (2 * v34 < 1)
        {
          goto LABEL_159;
        }

        v36 = sub_10012F36C();
        sub_1000375D4(v36);
        if (*(v7 + 16) < v18)
        {
          goto LABEL_160;
        }

        sub_10012EDD0();
        sub_10012F484();
        sub_100116AC8();
        if (*(v7 + 16) < v18)
        {
          goto LABEL_161;
        }

        sub_10012EDD0();
        sub_10012F484();
        sub_100116AC8();
        v11 = *(v120 + 16);
        if (v35 - v11 < 0)
        {
          goto LABEL_162;
        }

        sub_10012EDE8();
        sub_10012F1C4();
        sub_100116870();

        sub_100037408(v19);
        v37 = sub_1000DD44C();
        sub_100037408(v37);
        v9 = 0;
        v124 = 0;
        v125 = v11;
        v7 = v120;
        v123 = v120;
      }

      else
      {

        v57 = sub_1000DD44C();
        sub_100037408(v57);
        v58 = sub_1000DD44C();
        sub_100037408(v58);
LABEL_59:
        v9 = v124;
        v11 = v125;
      }
    }

    goto LABEL_59;
  }

  while (1)
  {

    v2 = v2(v59);
    v61 = v60;
    v63 = v62;

    if (!v2)
    {

      return;
    }

    if (v63)
    {
      break;
    }
  }

  v115 = v2;
  CallbackList._allCallbacks()(v2, v61, v63);
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v123 = v64;
  v124 = v66;
  v125 = v68;
  while (1)
  {
    v70 = v69 - v67;
    if (v69 < v67)
    {
      v70 += *(v65 + 16);
    }

    if (v70 < 1)
    {

      sub_100037408(v115);

      return;
    }

    if (v69 == v67)
    {
      goto LABEL_151;
    }

    if ((v67 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(v67))
    {
      goto LABEL_153;
    }

    v71 = *(v65 + 16);
    if (v67 >= v71)
    {
      goto LABEL_154;
    }

    v72 = *(v65 + 16 * v67 + 32);
    if (!v72)
    {
      goto LABEL_174;
    }

    if (v69 >= v67)
    {
      v71 = 0;
    }

    if ((v69 - v67 + v71) < 1)
    {
      goto LABEL_155;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_100111F3C();
    }

    if (v67 >= *(v65 + 16))
    {
      goto LABEL_156;
    }

    v73 = (v65 + 32 + 16 * v67);
    v74 = *v73;
    *v73 = 0;
    v73[1] = 0;
    v75 = sub_100037408(v74);
    v76 = (*(v65 + 16) + 0x1FFFFFFFFLL) & (v67 + 1);
    v123 = v65;
    v124 = v76;
    v72(&v120, v75);
    v77 = sub_1000C9970();
    sub_100037408(v77);
    v78 = v120;
    v79 = v122;
    if (!v120)
    {

      goto LABEL_124;
    }

    v80 = v121;
    if (v122)
    {
      v81 = v69 - v76;
      if (v69 < v76)
      {
        v81 += *(v65 + 16);
      }

      v23 = __OFADD__(v81, 1);
      v82 = v81 + 1;
      if (v23)
      {
        goto LABEL_163;
      }

      v83 = *(v122 + 16);
      v84 = v82 + v83;
      if (__OFADD__(v82, v83))
      {
        goto LABEL_164;
      }

      v85 = v121;
      if (*(v65 + 16) >= v84)
      {
        sub_10003742C(v120);
      }

      else
      {
        v86 = sub_1001062A8(v84);
        sub_10003742C(v78);

        sub_100116E2C(v86);
        v65 = v123;
      }

      sub_10004794C();
      v95 = swift_allocObject();
      *(v95 + 16) = v78;
      *(v95 + 24) = v85;
      v96 = v125;
      sub_10003742C(v78);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_100111F3C();
      }

      if ((v96 & 0x8000000000000000) != 0)
      {
        goto LABEL_165;
      }

      if (v96 >= *(v65 + 16))
      {
        goto LABEL_166;
      }

      v97 = v65 + 16 * v96;
      v98 = *(v97 + 32);
      *(v97 + 32) = sub_10012ED18;
      *(v97 + 40) = v95;
      sub_100037408(v98);
      v99 = (*(v65 + 16) + 0x7FFFFFFFFFFFFFFFLL) & (v96 + 1);
      v123 = v65;
      v125 = v99;
      if (v124 == v99)
      {
        sub_100113CFC();
      }

      v100 = 0;
      v101 = *(v79 + 16);
      v117 = v79;
      while (v101 != v100)
      {
        if (v100 >= *(v79 + 16))
        {
          goto LABEL_134;
        }

        v102 = v125;
        v103 = v123;
        v119 = *(v79 + 16 * v100 + 32);
        sub_10012F138();
        swift_retain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_100111F3C();
        }

        if ((v102 & 0x8000000000000000) != 0)
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (v102 >= *(v103 + 16))
        {
          goto LABEL_136;
        }

        v104 = (v103 + 32 + 16 * v102);
        v105 = *v104;
        *v104 = v119;
        sub_100037408(v105);
        v106 = *(v103 + 16);
        v107 = (v106 + 0x7FFFFFFFFFFFFFFFLL) & (v102 + 1);
        v123 = v103;
        v125 = v107;
        if (v124 == v107)
        {
          v108 = 2 * v106;
          if (2 * v106 < 1)
          {
            goto LABEL_137;
          }

          v109 = sub_10012F36C();
          sub_1000375D4(v109);
          if (*(v103 + 16) < v107)
          {
            goto LABEL_138;
          }

          sub_10012EDD0();
          sub_100116AC8();
          if (*(v103 + 16) < v107)
          {
            goto LABEL_139;
          }

          sub_10012EDD0();
          sub_100116AC8();
          v110 = *(v120 + 16);
          if (v108 - v110 < 0)
          {
            goto LABEL_140;
          }

          sub_10012EDE8();
          sub_10012F1C4();
          sub_100116870();

          v124 = 0;
          v125 = v110;
          v123 = v120;
          v79 = v117;
        }

        else
        {
        }

        ++v100;
      }

      v111 = sub_100037A2C();
      sub_100037408(v111);

      v112 = sub_100037A2C();
      sub_100037408(v112);
      v65 = v123;
LABEL_124:
      v67 = v124;
      v69 = v125;
    }

    else
    {
      sub_10004794C();
      v87 = swift_allocObject();
      *(v87 + 16) = v78;
      *(v87 + 24) = v80;
      sub_10003742C(v78);
      sub_10003742C(v78);

      if (v69 < 0)
      {
        goto LABEL_167;
      }

      if (v69 >= *(v65 + 16))
      {
        goto LABEL_168;
      }

      v88 = (v65 + 32 + 16 * v69);
      v89 = *v88;
      *v88 = sub_10012ED18;
      v88[1] = v87;
      sub_100037408(v89);
      v90 = *(v65 + 16);
      v123 = v65;
      v125 = (v90 + 0x7FFFFFFFFFFFFFFFLL) & (v69 + 1);
      if (v76 != v125)
      {

        v113 = sub_100037B7C();
        sub_100037408(v113);
        v114 = sub_100037B7C();
        sub_100037408(v114);
        goto LABEL_124;
      }

      v91 = 2 * v90;
      if (2 * v90 < 1)
      {
        goto LABEL_169;
      }

      v92 = sub_10012F36C();
      sub_1000375D4(v92);
      if (*(v65 + 16) < v76)
      {
        goto LABEL_170;
      }

      sub_10012EDD0();
      sub_10012F484();
      sub_100116AC8();
      if (*(v65 + 16) < v76)
      {
        goto LABEL_171;
      }

      sub_10012EDD0();
      sub_10012F484();
      sub_100116AC8();
      v69 = *(v120 + 16);
      if (v91 - v69 < 0)
      {
        goto LABEL_172;
      }

      sub_10012EDE8();
      sub_10012F1C4();
      sub_100116870();

      v93 = sub_10012F960();
      sub_100037408(v93);
      v94 = sub_10012F960();
      sub_100037408(v94);
      v67 = 0;
      v124 = 0;
      v125 = v69;
      v65 = v120;
      v123 = v120;
    }
  }

LABEL_152:
  __break(1u);
LABEL_153:
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
  __break(1u);
LABEL_159:
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
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
}

void EventLoopFuture.__allocating_init(_eventLoop:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  sub_10012F50C();
  sub_100019BC4(&qword_1002ACE88);
  v22 = sub_1001F8158();
  v23 = sub_1001F74B8();
  sub_100056658(v23);
  sub_10001E844();
  __chkstk_darwin();
  sub_100018460(&a9 - v24, 1, 1, v22);
  sub_10012F2E8();
  sub_10012F4D4();
  EventLoopFuture.__allocating_init(_eventLoop:value:file:line:)();
  sub_100037B00();
}

void EventLoopPromise._resolve(value:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_100019BC4(&qword_1002ACE88);
  v6 = sub_1001F8158();
  sub_10001A278();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  v12 = &v23 - v11;
  sub_10002E0B8();
  v14 = *(v3 + *(v13 + 96) + 8);
  ObjectType = swift_getObjectType();
  if ((*(v14 + 16))(ObjectType, v14))
  {
    sub_1000DD44C();
    EventLoopPromise._setValue(value:)();
    sub_1000E3198();
    CallbackList._run()();
    v16 = sub_100037A2C();
    sub_100037408(v16);
    sub_100037B00();
  }

  else
  {
    (*(v8 + 16))(v12, v5, v6);
    v18 = *(v8 + 80);
    v24 = v1;
    v19 = (v18 + 32) & ~v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v24;
    *(v20 + 24) = v3;
    (*(v8 + 32))(v20 + v19, v12, v6);
    v21 = *(v14 + 24);

    v22 = sub_10012F37C();
    v21(v22);

    sub_100037B00();
  }
}

uint64_t sub_100118808()
{
  EventLoopPromise._setValue(value:)();
  v1 = v0;
  CallbackList._run()();
  sub_100037408(v1);
}

void EventLoopFuture._setValue(value:)()
{
  sub_100037C08();
  v1 = v0;
  v2 = *v0;
  sub_100019BC4(&qword_1002ACE88);
  v3 = sub_10012FB38();
  v4 = sub_1001F74B8();
  sub_10001A278();
  v6 = v5;
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9, v12);
  v14 = &v29[-v13];
  v15 = *&v1[*(v2 + 96) + 8];
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)(v16, v17, v18, 769, v19, v15);
  sub_10002E0B8();
  v21 = *(v20 + 88);
  sub_100047940();
  swift_beginAccess();
  (*(v6 + 16))(v14, &v1[v21], v4);
  v22 = sub_1000D4AC8();
  LODWORD(v2) = sub_10001C990(v22, v23, v3);
  (*(v6 + 8))(v14, v4);
  _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  if (v2 == 1)
  {
    sub_10007E2C8();
    v24 = sub_100062888();
    v25(v24);
    sub_100018460(v11, 0, 1, v3);
    sub_100050548();
    sub_10012F98C();
    v26();
    swift_endAccess();
    sub_10002E0B8();
    v28 = &v1[*(v27 + 104)];
    sub_10012F774();
    *(v28 + 1) = 0;
    *(v28 + 2) = 0;
    *v28 = 0;
  }

  sub_100037B00();
}

uint64_t EventLoopFuture._value.getter@<X0>(uint64_t a1@<X8>)
{
  sub_10012F6CC();
  v4 = *(v3 + 88);
  sub_100047940();
  swift_beginAccess();
  sub_10012F6CC();
  sub_100019BC4(&qword_1002ACE88);
  sub_10012FB38();
  sub_10012F750();
  sub_1001F74B8();
  sub_100023520();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t EventLoopFuture._value.setter(uint64_t a1)
{
  sub_10012F6CC();
  v4 = *(v3 + 88);
  sub_100050548();
  sub_10012F6CC();
  sub_100019BC4(&qword_1002ACE88);
  sub_10012FB38();
  sub_10012F750();
  sub_1001F74B8();
  sub_100023520();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*EventLoopFuture._value.modify())()
{
  sub_10002E27C();
  sub_100050548();
  return j_j__swift_endAccess;
}

uint64_t EventLoopFuture._callbacks.getter()
{
  sub_10002E27C();
  sub_100047940();
  swift_beginAccess();
  v0 = sub_10012F398();
  sub_10003742C(v0);

  return sub_10012F398();
}

uint64_t EventLoopFuture._callbacks.setter()
{
  sub_1000A3DBC();
  v4 = v3;
  sub_10002E27C();
  v6 = (v1 + *(v5 + 104));
  sub_10012F774();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v2;
  v6[2] = v0;
  sub_100037408(v7);
}

uint64_t (*EventLoopFuture._callbacks.modify())()
{
  sub_10002E27C();
  sub_100050548();
  return j__swift_endAccess;
}

uint64_t EventLoopFuture.__allocating_init(_eventLoop:value:file:line:)()
{
  sub_1000A3DBC();
  v1 = swift_allocObject();
  v2 = sub_10005053C();
  EventLoopFuture.init(_eventLoop:value:file:line:)(v2, v3, v0);
  return v1;
}

uint64_t EventLoopFuture.init(_eventLoop:value:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10012F33C();
  v6 = (v3 + *(v5 + 96));
  *v6 = v7;
  v6[1] = v8;
  sub_10002E27C();
  v10 = *(v9 + 88);
  sub_100019BC4(&qword_1002ACE88);
  sub_10012FB38();
  sub_10012F750();
  sub_1001F74B8();
  sub_100023520();
  (*(v11 + 32))(v3 + v10, a3);
  sub_10002E27C();
  v13 = (v3 + *(v12 + 104));
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  return v3;
}

void EventLoopFuture.__allocating_init(eventLoop:value:file:line:)()
{
  sub_100037C08();
  v12[1] = v1;
  v3 = v2;
  v4 = *(v0 + 80);
  sub_100019BC4(&qword_1002ACE88);
  v5 = sub_1001F8158();
  sub_10012F9D8();
  v6 = sub_1001F74B8();
  sub_100056658(v6);
  sub_10001E844();
  __chkstk_darwin(v7, v8);
  v10 = v12 - v9;
  sub_10007E2C8();
  (*(v11 + 32))(v10, v3, v4);
  swift_storeEnumTagMultiPayload();
  sub_100018460(v10, 0, 1, v5);
  sub_10012F2E8();
  sub_10012F4D4();
  EventLoopFuture.__allocating_init(_eventLoop:value:file:line:)();
  sub_100037B00();
}

void EventLoopFuture.__allocating_init(eventLoop:error:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  sub_100019BC4(&qword_1002ACE88);
  v24 = sub_1001F8158();
  v25 = sub_1001F74B8();
  sub_100056658(v25);
  sub_10001E844();
  __chkstk_darwin(v26, v27);
  v29 = &a9 - v28;
  *(&a9 - v28) = v23;
  swift_storeEnumTagMultiPayload();
  sub_100018460(v29, 0, 1, v24);
  sub_10012F490();
  sub_10012F4D4();
  EventLoopFuture.__allocating_init(_eventLoop:value:file:line:)();
  sub_100037B00();
}

uint64_t EventLoopFuture.deinit()
{
  sub_10012F33C();
  v2 = *(v1 + 88);
  sub_100019BC4(&qword_1002ACE88);
  sub_1001F8158();
  sub_10012F750();
  sub_1001F74B8();
  sub_100023520();
  (*(v3 + 8))(v0 + v2);
  sub_10002E27C();
  swift_unknownObjectRelease();
  sub_10002E27C();
  sub_100037408(*(v0 + *(v4 + 104)));

  return v0;
}

uint64_t EventLoopFuture.__deallocating_deinit()
{
  EventLoopFuture.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100119308(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  if (v6 != 255)
  {
    v7 = *(a1 + 16);
    if (v6)
    {
      v8 = sub_1001DBFE4(v7, 1);
    }

    else
    {
      v9 = sub_10012DCD0(v7, v6);
      v10 = *(a3(v9) + 40);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v10) = v12(ObjectType, v10);
      swift_unknownObjectRelease();
      if ((v10 & 1) == 0)
      {
        sub_10002FEFC(a2);

        return 0;
      }

      sub_10011AC08();
      v8 = v13;
    }

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011948C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 24);
  if (v8 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v8)
    {
      return sub_1001DBFE4(v9, 1);
    }

    v11 = sub_10012DCD0(v9, v8);
    v12 = *(a2(v11) + 40);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v12) = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    if (v12)
    {

      sub_10011AC08();
      v10 = v15;
    }

    else
    {
      sub_10002FEFC(a4);

      return 0;
    }

    return v10;
  }

  return result;
}

uint64_t sub_1001195F0(uint64_t a1, uint64_t a2)
{
  sub_100047940();
  result = swift_beginAccess();
  v6 = *(a1 + 24);
  if (v6 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v6)
    {
      return sub_1001D6650(*(a1 + 16), 0, 1);
    }

    swift_getObjectType();
    sub_10012F53C();
    v8 = sub_100037B7C();
    sub_10012DF54(v8, v9);
    v10 = sub_100037B7C();
    sub_10012DF54(v10, v11);
    swift_unknownObjectRetain();
    v12 = sub_1000C9970();
    v13 = v2(v12);
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = sub_100037B7C();
      sub_10012DF54(v14, v15);

      sub_10012F2A0();
      sub_10011CCD0();
      v7 = v16;
      v17 = sub_100037B7C();
      sub_10012DF80(v17, v18);
      v19 = sub_100037B7C();
      sub_10012DF80(v19, v20);
    }

    else
    {
      sub_10002FF54(a2);
      v21 = sub_100037B7C();
      sub_10012DF80(v21, v22);
      v23 = sub_100037B7C();
      sub_10012DF80(v23, v24);
      return 0;
    }

    return v7;
  }

  return result;
}

uint64_t sub_10011975C(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 24);
  if (v8 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v8)
    {
      return sub_1001D6650(v9, 0, 1);
    }

    v15 = v9;
    sub_1000A3B30(v9, 0);
    v11 = *(a2(&v15) + 48);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v11) = v13(ObjectType, v11);
    swift_unknownObjectRelease();
    if (v11)
    {

      sub_10011CCD0();
      v10 = v14;

      sub_10012DF80(v9, v8);
    }

    else
    {
      sub_10002FF54(a4);

      sub_10012DF80(v9, v8);
      return 0;
    }

    return v10;
  }

  return result;
}

uint64_t sub_10011990C(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v5)
    {
      return sub_1001DBFE4(*(a1 + 16), 1);
    }

    v8 = *(v6 + 40);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    sub_10012DF54(v6, v5);
    sub_10012DF54(v6, v5);
    swift_unknownObjectRetain();
    LOBYTE(v8) = v10(ObjectType, v8);
    swift_unknownObjectRelease();
    if (v8)
    {
      sub_10012DF54(v6, v5);

      sub_10011AC08();
      v7 = v11;
      sub_10012DF80(v6, v5);
      sub_10012DF80(v6, v5);
    }

    else
    {
      sub_10002FEFC(a2);
      sub_10012DF80(v6, v5);
      sub_10012DF80(v6, v5);
      return 0;
    }

    return v7;
  }

  return result;
}

uint64_t sub_100119A9C(uint64_t a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a1 + 24);
  if (v8 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v8)
    {
      return sub_1001DBFE4(v9, 1);
    }

    v15 = v9;
    sub_1000A3B30(v9, 0);
    v11 = *(a2(&v15) + 40);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v11) = v13(ObjectType, v11);
    swift_unknownObjectRelease();
    if (v11)
    {

      sub_10011AC08();
      v10 = v14;

      sub_10012DF80(v9, v8);
    }

    else
    {
      sub_10002FEFC(a4);

      sub_10012DF80(v9, v8);
      return 0;
    }

    return v10;
  }

  return result;
}